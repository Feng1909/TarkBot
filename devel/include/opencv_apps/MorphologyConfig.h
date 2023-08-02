//#line 2 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the opencv_apps package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __opencv_apps__MORPHOLOGYCONFIG_H__
#define __opencv_apps__MORPHOLOGYCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace opencv_apps
{
  class MorphologyConfigStatics;

  class MorphologyConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }
      virtual ~AbstractParamDescription() = default;

      virtual void clamp(MorphologyConfig &config, const MorphologyConfig &max, const MorphologyConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const MorphologyConfig &config1, const MorphologyConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, MorphologyConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const MorphologyConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, MorphologyConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const MorphologyConfig &config) const = 0;
      virtual void getValue(const MorphologyConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T MorphologyConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T MorphologyConfig::* field;

      virtual void clamp(MorphologyConfig &config, const MorphologyConfig &max, const MorphologyConfig &min) const override
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const MorphologyConfig &config1, const MorphologyConfig &config2) const override
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, MorphologyConfig &config) const override
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const MorphologyConfig &config) const override
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, MorphologyConfig &config) const override
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const MorphologyConfig &config) const override
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const MorphologyConfig &config, boost::any &val) const override
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      virtual ~AbstractGroupDescription() = default;

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, MorphologyConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, MorphologyConfig &top) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const override
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<MorphologyConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(MorphologyConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("use_camera_info"==(*_i)->name){use_camera_info = boost::any_cast<bool>(val);}
        if("morph_operator"==(*_i)->name){morph_operator = boost::any_cast<int>(val);}
        if("morph_element"==(*_i)->name){morph_element = boost::any_cast<int>(val);}
        if("morph_size"==(*_i)->name){morph_size = boost::any_cast<int>(val);}
      }
    }

    bool use_camera_info;
int morph_operator;
int morph_element;
int morph_size;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool use_camera_info;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int morph_operator;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int morph_element;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int morph_size;
//#line 231 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("MorphologyConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const MorphologyConfig &__max__ = __getMax__();
      const MorphologyConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const MorphologyConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const MorphologyConfig &__getDefault__();
    static const MorphologyConfig &__getMax__();
    static const MorphologyConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const MorphologyConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void MorphologyConfig::ParamDescription<std::string>::clamp(MorphologyConfig &config, const MorphologyConfig &max, const MorphologyConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class MorphologyConfigStatics
  {
    friend class MorphologyConfig;

    MorphologyConfigStatics()
    {
MorphologyConfig::GroupDescription<MorphologyConfig::DEFAULT, MorphologyConfig> Default("Default", "", 0, 0, true, &MorphologyConfig::groups);
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.use_camera_info = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.use_camera_info = 1;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.use_camera_info = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &MorphologyConfig::use_camera_info)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &MorphologyConfig::use_camera_info)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.morph_operator = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.morph_operator = 3;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.morph_operator = 1;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_operator", "int", 0, "Morphology Operation Methods", "{'enum': [{'name': 'Opening', 'type': 'int', 'value': 0, 'srcline': 10, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Opening', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Closing', 'type': 'int', 'value': 1, 'srcline': 11, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Closing', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Gradient', 'type': 'int', 'value': 2, 'srcline': 12, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Gradient', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Top_Hat', 'type': 'int', 'value': 3, 'srcline': 13, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Top Hat', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Black_Hat', 'type': 'int', 'value': 4, 'srcline': 14, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Black Hat', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'An enum for Morphology Operations'}", &MorphologyConfig::morph_operator)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_operator", "int", 0, "Morphology Operation Methods", "{'enum': [{'name': 'Opening', 'type': 'int', 'value': 0, 'srcline': 10, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Opening', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Closing', 'type': 'int', 'value': 1, 'srcline': 11, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Closing', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Gradient', 'type': 'int', 'value': 2, 'srcline': 12, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Gradient', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Top_Hat', 'type': 'int', 'value': 3, 'srcline': 13, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Top Hat', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Black_Hat', 'type': 'int', 'value': 4, 'srcline': 14, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg', 'description': 'Black Hat', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'An enum for Morphology Operations'}", &MorphologyConfig::morph_operator)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.morph_element = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.morph_element = 2;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.morph_element = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_element", "int", 0, "Type of the kernel 0: Rect, 1: Cross, 2: Ellipse", "", &MorphologyConfig::morph_element)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_element", "int", 0, "Type of the kernel 0: Rect, 1: Cross, 2: Ellipse", "", &MorphologyConfig::morph_element)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.morph_size = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.morph_size = 21;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.morph_size = 0;
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_size", "int", 0, "Size of the kernel. Must be odd.", "", &MorphologyConfig::morph_size)));
//#line 291 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(MorphologyConfig::AbstractParamDescriptionConstPtr(new MorphologyConfig::ParamDescription<int>("morph_size", "int", 0, "Size of the kernel. Must be odd.", "", &MorphologyConfig::morph_size)));
//#line 246 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(MorphologyConfig::AbstractGroupDescriptionConstPtr(new MorphologyConfig::GroupDescription<MorphologyConfig::DEFAULT, MorphologyConfig>(Default)));
//#line 369 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<MorphologyConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<MorphologyConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<MorphologyConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    MorphologyConfig __max__;
    MorphologyConfig __min__;
    MorphologyConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const MorphologyConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static MorphologyConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &MorphologyConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const MorphologyConfig &MorphologyConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const MorphologyConfig &MorphologyConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const MorphologyConfig &MorphologyConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<MorphologyConfig::AbstractParamDescriptionConstPtr> &MorphologyConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<MorphologyConfig::AbstractGroupDescriptionConstPtr> &MorphologyConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const MorphologyConfigStatics *MorphologyConfig::__get_statics__()
  {
    const static MorphologyConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = MorphologyConfigStatics::get_instance();

    return statics;
  }

//#line 10 "/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg"
      const int Morphology_Opening = 0;
//#line 11 "/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg"
      const int Morphology_Closing = 1;
//#line 12 "/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg"
      const int Morphology_Gradient = 2;
//#line 13 "/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg"
      const int Morphology_Top_Hat = 3;
//#line 14 "/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/cfg/Morphology.cfg"
      const int Morphology_Black_Hat = 4;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __MORPHOLOGYRECONFIGURATOR_H__