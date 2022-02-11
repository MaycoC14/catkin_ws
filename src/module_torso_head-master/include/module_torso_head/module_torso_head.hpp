#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <boost/any.hpp>
#include <typeinfo>
#include <cctype>

//ROS
#include <ros/ros.h>
#include <ros/package.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <std_msgs/Float64.h>
#include <geometry_msgs/Point.h>
#include <std_msgs/Bool.h>
#include <nlohmann/json.hpp>

#ifndef MODULE_TORSO_HEAD
#define MODULE_TORSO_HEAD

class ModuleTorsoHead
{
	private:
		//basic-module name
		std::string bm_name;
		//input parameters buffer
		std::map<std::string,boost::any> buffer;
		//data publishers
		std::map<std::string,ros::Publisher> data_pubs;

		//sync-topics
		std::string top_sync_pub;
		std::string top_sync_sub;

		//data-topics
		std::string top_data_string;
		std::string top_data_bool;
		std::string top_data_float64;
		std::string top_data_point;

		//sync pub & sub
		ros::Publisher sync_pub;
		ros::Subscriber sync_sub;

		//data subs
		ros::Subscriber string_sub;
		ros::Subscriber bool_sub;
		ros::Subscriber float64_sub;
		ros::Subscriber point_sub;

		//Publisher and Subscriber para Torso
		ros::Publisher torso_pub; //Declaracion de la publicador. Este publica a /movetorso/position
		ros::Subscriber torso_sub; //Declaracion del Subscriptor. Este se subscribe a /movetorso/status (Retorna un string "ready" cuando llegue a la deseada);
		std::string torso_status;

		//Publisher an Subscriber para la cabeza
		ros::Publisher head_pub;
		ros::Subscriber head_sub;
		std::string head_status;

		// Name's function.
		std::string fun_name; //Guarda el nombre de la funcion que se esta ejecutando.
		std::vector<std::string> list_fun_names; //Guarda un registro de las funciones que se ejecutaron. 
		std::vector<std::string> TorsoHeadQueue;

	public:

		ModuleTorsoHead(ros::NodeHandle *nh, std::string bm_name);
		~ModuleTorsoHead(){};

	private:

		//Methods for sync-logic
		void sync_cb(const std_msgs::String::ConstPtr& msg); //Agregado el nh, quitar luego
		bool returnOutParams(std::vector<std::string> param_names, std::vector<boost::any> params);

		//data callbacks
		void string_cb(const std_msgs::String::ConstPtr& msg);
		void bool_cb(const std_msgs::Bool::ConstPtr& msg);
		void float64_cb(const std_msgs::Float64::ConstPtr& msg);
		void point_cb(const geometry_msgs::Point::ConstPtr& msg);

		//implementation (torso & head) callbacks
		void string_cb_torso(const std_msgs::String::ConstPtr& msg);
		void string_cb_head(const std_msgs::String::ConstPtr& msg);

		//Funciones predefinidas para mover el torso//
		void Torso_Arriba(); // Extiende el torso hasta 0.33 metros
		void Torso_Medio(); //	Posiciona el torso a la mitad 
		void Torso_Abajo(); //  Baja el torso  completamente

		//Funciones predefinidas para mover la cabeza//
		void Head_Derecha(); // Funciones predeterminadas  para movimiento de cabeza
		void Head_Medio();
		void Head_Izquierda();
		void Head_Arriba();
		void Head_Abajo();

		//Funciones para mover el torso y la cabeza modularmente//
		void Torso_move(const std_msgs::Float64 &param0);
		void Head_move(const std_msgs::Float64 &param0, const std_msgs::Float64 &param1);

		//Funcion para mover el torso y la cabeza en una sola instruccion.
		//Parametro &pos =  (altura de torso normalizado, movimiento de la cabeza en Yaw, movimiento de la cabeza en pitch)
		void TorsoHeadPos(const geometry_msgs::Point &pos); // Pocisiona la cabeza y el toros en un punto del vector

		//Funcion para levantar el torso los max proximo al objeto
		//Parametro  &param0 = (altura del objeto)
		void TorsoPosObj(const std_msgs::Float64 &param0); //Posiciona el torso a la altura del objeto

		//Funcion que pretende preparar el torso y la cabeza para enfocar la mesa
		// Params: (Altura de la mesa, movimiento de la cabeza en Yaw, movimiento de la cabeza en pitch)
		void TorsoHeadTable(const geometry_msgs::Point &pos); 

		//Funcion que normaliza un valor en Metros.
		float Meters_to_Normal(const float &param0);
};

#endif
