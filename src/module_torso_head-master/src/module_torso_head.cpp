#include <module_torso_head/module_torso_head.hpp>
#include <basicmodutil_pkg/utilBM.hpp>

using json = nlohmann::json;
using namespace std;

ModuleTorsoHead::ModuleTorsoHead(ros::NodeHandle *nh, string bm_name)
{
	//basic-module name
	this->bm_name = bm_name;

	//sync-topics
	top_sync_pub = "/"+bm_name+"/BM_output";
	top_sync_sub = "/"+bm_name+"/BM_input";

	//data-topics
	top_data_string = "/"+bm_name+"/string";
	top_data_bool = "/"+bm_name+"/bool";
	top_data_float64="/"+bm_name+"/float64";
	top_data_point="/"+bm_name+"/point";

	//sync pub & sub
	sync_pub = nh->advertise<std_msgs::String>(top_sync_pub,1);
	sync_sub = nh->subscribe<std_msgs::String>(top_sync_sub,1,&ModuleTorsoHead::sync_cb,this);

	//data pubs & subs
	ros::Publisher string_pub = nh->advertise<std_msgs::String>(top_data_string,1);
	string_sub = nh->subscribe<std_msgs::String>(top_data_string,1,&ModuleTorsoHead::string_cb,this);

	ros::Publisher bool_pub = nh->advertise<std_msgs::Bool>(top_data_bool,1);
	bool_sub = nh->subscribe<std_msgs::Bool>(top_data_bool,1,&ModuleTorsoHead::bool_cb,this);

	ros::Publisher float64_pub = nh->advertise<std_msgs::Float64>(top_data_float64,1);
	float64_sub = nh->subscribe<std_msgs::Float64>(top_data_float64,1,&ModuleTorsoHead::float64_cb,this);

	ros::Publisher point_pub = nh->advertise<geometry_msgs::Point>(top_data_point,1);
	point_sub = nh->subscribe<geometry_msgs::Point>(top_data_point,1,&ModuleTorsoHead::point_cb, this);

	//****Publicador para mover el torso y Subscriptor leer el status del torso.
	torso_pub = nh->advertise<std_msgs::Float64>("/movetorso/position",1);
	torso_sub = nh->subscribe<std_msgs::String>("/movetorso/status",1, &ModuleTorsoHead::string_cb_torso,this);

	//****Publicador para mover la cabeza y subscriptor para leer su status.
	head_pub = nh->advertise<std_msgs::String>("/pantilt/position",1);
	head_sub = nh->subscribe<std_msgs::String>("/pantilt/status",1, &ModuleTorsoHead::string_cb_head,this);

	//Store data publishers in the std::map 'data_pubs'
	// key = data-type, value = ROS-publisher
	data_pubs[basicmodutil_pkg::getRosType(std_msgs::String())] = string_pub;
	data_pubs[basicmodutil_pkg::getRosType(std_msgs::Bool())] = bool_pub;
	data_pubs[basicmodutil_pkg::getRosType(std_msgs::Float64())] = float64_pub;
	data_pubs[basicmodutil_pkg::getRosType(geometry_msgs::Point())] = point_pub;

	//Create an attribute in the buffer for each data-topic
	// key = data-topic, value = ROS-message object
	buffer[top_data_string] = std_msgs::String();
	buffer[top_data_bool] = std_msgs::Bool();
	buffer[top_data_float64]= std_msgs::Float64();
	buffer[top_data_point]= geometry_msgs::Point();

	//DISPLAY IN CONSOLE OF THE BASIC-MODULE
	ROS_INFO("BASIC-MODULE");
	ROS_INFO("\t%s",bm_name.c_str());
	ROS_INFO("SYNC-TOPICS");
	ROS_INFO("\t%s",top_sync_pub.c_str());
	ROS_INFO("\t%s",top_sync_sub.c_str());
	ROS_INFO("DATA-TOPICS");
	ROS_INFO("\t%s",top_data_string.c_str());
	ROS_INFO("\t%s",top_data_bool.c_str());
	ROS_INFO("\t%s",top_data_float64.c_str());
	ROS_INFO("\t%s",top_data_point.c_str());
	ROS_INFO("######################################");
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void ModuleTorsoHead::sync_cb(const std_msgs::String::ConstPtr& msg)
{
	try
	{
		//Parse the JSON string into an object
		string js(msg->data);
		json jj = json::parse(js);

		//Get the requested function and its input params
		string fun = jj["function"];
		vector<string> inparam_topics = jj["inparam_topics"];
		vector<boost::any> inparams;
		for(unsigned int i = 0; i < inparam_topics.size(); i++)
		{
			inparams.push_back(buffer[inparam_topics[i]]);
		}

		//DISPLAY IN CONSOLE
		ROS_INFO("SYNC_CB");
		ROS_INFO("FUNCTION");
		ROS_INFO("\t%s",fun.c_str());
		ROS_INFO("INPARAM-TOPICS");
		for(unsigned int i = 0; i < inparam_topics.size(); i++)
			ROS_INFO("\t%s",inparam_topics[i].c_str());
		ROS_INFO("--------------------------------");

		//Invoke the requested functio
		if(fun == "Torso_Arriba")
		{
			Torso_Arriba();
		}
		else if(fun == "Torso_Medio")
		{
			Torso_Medio();
		}
		else if(fun == "Torso_Abajo")
		{
			Torso_Abajo();
		}

		else if(fun == "Head_Derecha")
		{
			Head_Derecha();
		}
		else if(fun == "Head_Medio")
		{
			Head_Medio();
		}
		else if(fun == "Head_Izquierda")
		{
			Head_Izquierda();
		}
		else if(fun == "Head_Arriba")
		{
			Head_Arriba();
		}
		else if(fun == "Head_Abajo")
		{
			Head_Abajo();
		}
		else if(fun == "TorsoHeadPos")
		{
			auto param0 = boost::any_cast<geometry_msgs::Point>(buffer[inparam_topics[0]]);
			TorsoHeadPos(param0);
		}
		else if(fun == "TorsoHeadTable")
		{
			auto param0 = boost::any_cast<geometry_msgs::Point>(buffer[inparam_topics[0]]);
			TorsoHeadTable(param0);
		}

		else if(fun == "TorsoPosObj")
		{
			auto param0 = boost::any_cast<std_msgs::Float64>(buffer[inparam_topics[0]]);
			TorsoPosObj(param0);
		}
		else if(fun == "Torso_move")
		{
			auto param0 = boost::any_cast<std_msgs::Float64>(buffer[inparam_topics[0]]);
			Torso_move(param0);
		}
		else if(fun == "Head_move")
		{
			auto param0 = boost::any_cast<std_msgs::Float64>(buffer[inparam_topics[0]]);
			auto param1 = boost::any_cast<std_msgs::Float64>(buffer[inparam_topics[1]]);
			Head_move(param0, param1);
		}
	}
	catch(std::exception& e)
	{
		ROS_WARN("%s received a non-JSON msg. in the SYNC callback.",this->bm_name.c_str());
		return;
	}
}

bool ModuleTorsoHead::returnOutParams(vector<string> param_names, vector<boost::any> params)
{
	if(param_names.size() != params.size()) return false;

	//Get the output-param names
	json jj;
	jj["outparam_names"] = param_names;

	//Publish the output-params in their respective publisher
	//4) En el método returnOutParams, dentro del ciclo for, por cada data-topic
	//agregar un caso if para saber a qué tipo se debe convertir cada parámetro
	//de salida (almacenado en el vector params)

	vector<string> outparam_topics;
	for(unsigned int i = 0; i < params.size(); i++)
	{
		string ros_type = basicmodutil_pkg::getRosType(params[i]);

		//Cast the i-th param to its data-type
		if(ros_type  == "std_msgs/String")
			data_pubs[ros_type].publish(boost::any_cast<std_msgs::String>(params[i]));
		else if(ros_type  == "std_msgs/Bool")
			data_pubs[ros_type].publish(boost::any_cast<std_msgs::Bool>(params[i]));
		//... and as many cases for the data-types the basic-module has
		else if(ros_type == "std_msgs/Float64")
			data_pubs[ros_type].publish(boost::any_cast<std_msgs::Float64>(params[i]));
		else if(ros_type == "geometry_msgs/Point")
			data_pubs[ros_type].publish(boost::any_cast<geometry_msgs::Point>(params[i]));
		//Get the topic in which 'params[i]' is published
		outparam_topics.push_back(data_pubs[ros_type].getTopic());
	}

	//Make a small delay
	ros::Duration(1.0).sleep();

	//Publish in the sync topic the name & topics of the output parameters
	jj["outparam_topics"] = outparam_topics;
	string js = jj.dump();
	std_msgs::String msg;
	msg.data = js;
	sync_pub.publish(msg);
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void ModuleTorsoHead::string_cb(const std_msgs::String::ConstPtr& msg)
{
	//Store the received data in the buffer	
	try
	{
		buffer[top_data_string] = *msg;
	}
	catch(std::exception& e)
	{
		return;
	}
}

void ModuleTorsoHead::bool_cb(const std_msgs::Bool::ConstPtr& msg)
{
	//Store the received data in the buffer
	try
	{
		buffer[top_data_bool] = *msg;
	}
	catch(std::exception& e)
	{
		return;
	}
}

void ModuleTorsoHead::point_cb(const geometry_msgs::Point::ConstPtr& msg)
{
	try
	{
		buffer[top_data_point] = *msg;
	}
	catch(std::exception& e)
	{
		return;
	}	
}

void ModuleTorsoHead::float64_cb(const std_msgs::Float64::ConstPtr& msg)
{
	try
	{
		buffer[top_data_float64] = *msg;
	}
	catch(std::exception& e)
	{
		return;
	}
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void ModuleTorsoHead::string_cb_torso(const std_msgs::String::ConstPtr& msg)
{
	//Store the received data in the buffer	
		torso_status  = (*msg).data;
		std::cout<<torso_status<<std::endl;
		std::cout<<list_fun_names.back()<<std::endl;


		if( ( (list_fun_names.back()=="TorsoHeadPos") || (list_fun_names.back()=="TorsoHeadTable") || (list_fun_names.back()=="TorsoPosObj")) && (TorsoHeadQueue.size() <= 1) ){ 
				ROS_INFO("Torso llego al lugar deseado!");
				vector<string> tmp_n;
				tmp_n.push_back(string("Name_function"));
				tmp_n.push_back(string("Status"));

				//Store the outputs values in a vector
				vector<boost::any> tmp_p;
				std_msgs::String out1;
				std_msgs::Bool out2;

				out1.data=fun_name;
				out2.data= true;

				tmp_p.push_back(out1);
				tmp_p.push_back(out2);
				//Return the function's output-parameters
				TorsoHeadQueue.clear();
				returnOutParams(tmp_n,tmp_p);
				ROS_INFO("DONE");
				ROS_INFO("--------------------------------");
		}
		else if( ( (list_fun_names.back()=="TorsoHeadPos") || (list_fun_names.back()=="TorsoHeadTable") || (list_fun_names.back()=="TorsoPosObj") ) && (TorsoHeadQueue.size() >= 2)){
			//SI SOLO QUEDA UNA FUNCION POR EJECTURAR Y ES  DE TORSO HAS LA LOGICA Y RETORNA.
			if( torso_status == "ready"){
				ROS_INFO("Torso llego al lugar deseado!");
				TorsoHeadQueue.erase(TorsoHeadQueue.begin()+0); //Elimina la funcion de mover torso porque ya la realizo.
				
			}
			else{
				ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
			};
		}
		else{
			if(torso_status=="ready"){
				ROS_INFO("Torso llego al lugar deseado!");
				vector<string> tmp_n;
				tmp_n.push_back(string("Name_function"));
				tmp_n.push_back(string("Status"));

				//Store the outputs values in a vector
				vector<boost::any> tmp_p;
				std_msgs::String out1;
				std_msgs::Bool out2;

				out1.data=fun_name;
				out2.data= true;

				tmp_p.push_back(out1);
				tmp_p.push_back(out2);
				//Return the function's output-parameters
				returnOutParams(tmp_n,tmp_p);
				ROS_INFO("DONE");
				ROS_INFO("--------------------------------");
			}
			else{
				ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
			};
		};

		// if(torso_status=="ready"){
		// 	ROS_INFO("Torso llego al lugar deseado!");
		// 	vector<string> tmp_n;
		// 	tmp_n.push_back(string("Name_function"));
		// 	tmp_n.push_back(string("Status"));

		// 	//Store the outputs values in a vector
		// 	vector<boost::any> tmp_p;
		// 	std_msgs::String out1;
		// 	std_msgs::Bool out2;

		// 	out1.data=fun_name;
		// 	out2.data= true;

		// 	tmp_p.push_back(out1);
		// 	tmp_p.push_back(out2);
		// 	//Return the function's output-parameters
		// 	returnOutParams(tmp_n,tmp_p);
		// 	ROS_INFO("DONE");
		// 	ROS_INFO("--------------------------------");
		// }
		// else{
		// 	ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
		// };		
}

void ModuleTorsoHead::string_cb_head(const std_msgs::String::ConstPtr& msg)
{
	//Store the received data in the buffer	
		head_status  = (*msg).data;
		std::cout<<head_status<<std::endl;
		if( ( (list_fun_names.back()=="TorsoHeadPos") || (list_fun_names.back()=="TorsoHeadTable") || (list_fun_names.back()=="TorsoPosObj")) && (TorsoHeadQueue.size()<=1)){
			if(head_status=="ready"){
				ROS_INFO("Head llego al lugar deseado!");
				vector<string> tmp_n;
				tmp_n.push_back(string("Name_function"));
				tmp_n.push_back(string("Status"));

				//Store the outputs values in a vector
				vector<boost::any> tmp_p;
				std_msgs::String out1;
				std_msgs::Bool out2;

				out1.data=fun_name;
				out2.data= true;

				tmp_p.push_back(out1);
				tmp_p.push_back(out2);
				//Return the function's output-parameters
				TorsoHeadQueue.clear();
				returnOutParams(tmp_n,tmp_p);
				ROS_INFO("DONE");
				ROS_INFO("--------------------------------");
			}
			else if(torso_status!="ready"){
				ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
			}
		}
		else if( ( (list_fun_names.back()=="TorsoHeadPos") || (list_fun_names.back()=="TorsoHeadTable") || (list_fun_names.back()=="TorsoPosObj")) && (TorsoHeadQueue.size()>=2)){
			//SI SOLO QUEDA UNA FUNCION POR EJECTURAR Y ES  DE TORSO HAS LA LOGICA Y RETORNA.
			if(head_status=="ready"){
				ROS_INFO("Head llego al lugar deseado!");
				TorsoHeadQueue.erase(TorsoHeadQueue.begin()+1); //Elimina la funcion de mover torso porque ya la realizo.
			}
			else if(head_status!="ready"){
				ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
			}
		}
		else{
			if(head_status=="ready"){
				ROS_INFO("Head llego al lugar deseado!");
				vector<string> tmp_n;
				tmp_n.push_back(string("Name_function"));
				tmp_n.push_back(string("Status"));

				//Store the outputs values in a vector
				vector<boost::any> tmp_p;
				std_msgs::String out1;
				std_msgs::Bool out2;

				out1.data=fun_name;
				out2.data= true;

				tmp_p.push_back(out1);
				tmp_p.push_back(out2);
				//Return the function's output-parameters
				returnOutParams(tmp_n,tmp_p);
				ROS_INFO("DONE");
				ROS_INFO("--------------------------------");
			}
			else if(torso_status!="ready"){
				ROS_INFO("Sin respuesta, esperando que llegue al lugar deseado...");
			}
		}
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//Extiende el torso hasta 0.33 metros
void ModuleTorsoHead::Torso_Arriba()
{
	//DISPLAY IN CONSOLE
	//Publicar en 
	fun_name = "Torso_Arriba";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\tTorso_Arriba");

	cout << ">> Extendiendo el torso hasta arriba: "<< endl;
	std_msgs::Float64 obj;
	obj.data=0.95;
	torso_pub.publish(obj);
	//En este punto debe leer "string_cb_torso" Callback para retornar cuando llegue a su estado!!
}

//  Baja el torso  completamente
void ModuleTorsoHead::Torso_Medio()
{
	//DISPLAY IN CONSOLE
	//Publicar en
	fun_name = "Torso_Medio";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;

	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Torso en medio: "<< endl;
	std_msgs::Float64 obj;
	obj.data=0.5;
	torso_pub.publish(obj);
}

//Posiciona el torso a la mitad 
void ModuleTorsoHead::Torso_Abajo()
{
	//DISPLAY IN CONSOLE
	//Publicar en 
	fun_name = "Torso_Abajo"; 
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());
	cout << ">> Extendiendo el torso hasta abajo: "<< endl;
	std_msgs::Float64 obj;
	obj.data=0.02;
	torso_pub.publish(obj);

}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// **----- Funciones predeterminadas  para movimiento de cabeza-----**
void ModuleTorsoHead::Head_Derecha()
{
		//DISPLAY IN CONSOLE
	//Publicar en 
	fun_name = "Head_Derecha";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Moviendo la cabeza: "<< endl;
	std_msgs::String obj;
	obj.data="-1.5 0";
	head_pub.publish(obj);

}

void ModuleTorsoHead::Head_Medio()
{
	fun_name = "Head_Medio";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Moviendo la cabeza: "<< endl;
	std_msgs::String obj;
	obj.data="0 0";
	head_pub.publish(obj);
}

void ModuleTorsoHead::Head_Izquierda()
{
	fun_name = "Head_Izquierda";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Moviendo la cabeza: "<< endl;
	std_msgs::String obj;
	obj.data="1.5 0";
	head_pub.publish(obj);
}

void ModuleTorsoHead::Head_Arriba()
{
	fun_name = "Head_Arriba";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Moviendo la cabeza: "<< endl;
	std_msgs::String obj;
	obj.data="0 -0.3";
	head_pub.publish(obj);
}

void ModuleTorsoHead::Head_Abajo()
{
	fun_name = "Head_Abajo";
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());

	cout << ">> Moviendo la cabeza: "<< endl;
	std_msgs::String obj;
	obj.data="0 0.95";
	head_pub.publish(obj);	
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void ModuleTorsoHead::Torso_move(const std_msgs::Float64 &param0)
{
	fun_name = "Torso_move"; 
	list_fun_names.push_back(fun_name); //Agregar el nombre en el vector;
	ROS_INFO("EXECUTING FUNCTION");
	ROS_INFO("\t%s",fun_name.c_str());
	cout << ">> Ajustando el torso: "<< endl;
	std_msgs::Float64 obj;
	obj.data=param0.data;
	torso_pub.publish(obj);
}

void ModuleTorsoHead::Head_move(const std_msgs::Float64 &param0, const std_msgs::Float64 &param1)
{
	float panPos = param0.data, tiltPos = param1.data; //Descargando la informacion que se le paso por referencia.
	string panTiltVar = to_string(panPos) + " " + to_string(tiltPos); //Debido a la cabeza solo admite una cadena de texto, se tiene que convertir a string.
	std_msgs::String objMsg1;
	objMsg1.data = panTiltVar;
	head_pub.publish(objMsg1);
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Pocisiona la cabeza y el toros dado un punto. (torso_normalizado, PanHead in radians, TildHead in radians)
void ModuleTorsoHead::TorsoHeadPos(const geometry_msgs::Point &pos)
{
	fun_name = "TorsoHeadPos";
	list_fun_names.push_back(string(fun_name)); //Agregar la funcion actual que se este usando. //Modificado
	TorsoHeadQueue.push_back("Torso");  // Agrega a la cola la tarea por hacer y cuando ya se haya realizado se eliminara con clear.
	TorsoHeadQueue.push_back("Head"); // Agrega a la cola la tarea por hacer y cuando ya se haya realizado se eliminara con clear.
	
	std_msgs::Float64 objMsg1; // Creando objetos ros_message para publicar
	std_msgs::String objMsg2;

	ROS_INFO("EXECUTING FUNCTION");  
	ROS_INFO("\t %s",fun_name.c_str());  // Nombre de la funcion
	ROS_INFO("\t  Moviendo el Torso y la cabeza..."); //Flag para saber que se esta haciendo

	float torsoPos = pos.x, panPos = pos.y, tiltPos = pos.z; //Descargando la informacion que se le paso por referencia.
	string panTiltVar = to_string(panPos) + " " + to_string(tiltPos); //Debido a la cabeza solo admite una cadena de texto, se tiene que convertir a string.
	objMsg1.data = torsoPos;
	objMsg2.data = panTiltVar;

	torso_pub.publish(objMsg1);
	head_pub.publish(objMsg2);
}

//Pretende posicionar el torso y la cabeza en la meza
void ModuleTorsoHead::TorsoHeadTable(const geometry_msgs::Point &pos)
{

	fun_name = "TorsoHeadTable";

	list_fun_names.push_back(string(fun_name)); //Agregar la funcion actual que se este usando. //Modificado
	TorsoHeadQueue.push_back("Torso");  // Agrega a la cola la tarea por hacer y cuando ya se haya realizado se eliminara con clear.
	TorsoHeadQueue.push_back("Head"); // Agrega a la cola la tarea por hacer y cuando ya se haya realizado se eliminara con clear.

	std_msgs::Float64 objMsg1; // Creando objetos ros_message para publicar
	std_msgs::String objMsg2;

	ROS_INFO("EXECUTING FUNCTION");  
	ROS_INFO("\t %s",fun_name.c_str());  // Nombre de la funcion
	ROS_INFO("\t  Moviendo el Torso a la altura de la mesa y la cabeza..."); //Flag para saber que se esta haciendo

	
	float altura_mesa = pos.x; //Altura de la mesa
	const float altura_base = 0.33; //Altura de la base del Marcovito Jr.
	float altura_torso = altura_mesa - altura_base;
	float a=Meters_to_Normal(altura_torso);

	objMsg1.data = a;

	float panPos = pos.y, tiltPos = pos.z; //Descargando la informacion que se le paso por referencia.
	string panTiltVar = to_string(panPos) + " " + to_string(tiltPos); //Debido a la cabeza solo admite una cadena de texto, se tiene que convertir a string.

	objMsg2.data = panTiltVar;
	torso_pub.publish(objMsg1);
	head_pub.publish(objMsg2);

}

//Posiciona el torso a la altura de masa con fin
void ModuleTorsoHead::TorsoPosObj(const std_msgs::Float64 &param0)
{
	fun_name = "TorsoPosObj	";
	list_fun_names.push_back(string(fun_name));
	TorsoHeadQueue.push_back("Torso");
	std_msgs::Float64 objMsg1;

	ROS_INFO("EXECUTING FUNCTION");  
	ROS_INFO("\t  %s",fun_name.c_str());  // Nombre de la funcion
	ROS_INFO("\t   Moviendo el Torso a la altura del objeto..."); //Flag para saber que se esta haciendo
	
	float altura_obj = param0.data;
	const float altura_base = 0.33;
	float altura_torso = altura_obj - altura_base;
	ROS_INFO("Altura torso = %f Meters",altura_torso);
	float a=Meters_to_Normal(altura_torso);
	ROS_INFO("Normalizado a = %f",a);
	objMsg1.data =a;
	torso_pub.publish(objMsg1);
}

//Convierte un valor de en metros a normal.
float ModuleTorsoHead::Meters_to_Normal(const float &param0)
{
	const float Pendiente =  2.664;
	const float up_torso = 0.99;
	const float down_torso = 0.1;
	if(param0>0 && param0<0.33){
		return ((Pendiente*param0) +0.1);
	}
	else if(param0<0){
		return down_torso;
	}
	else{
		return up_torso;
	};
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

