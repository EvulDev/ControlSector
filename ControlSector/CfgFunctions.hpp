class CS {
    class diag {
        file = "ControlSector\functions\diag";
        class error {};
        class info {};
        class log {};
        class warning {};
    };
    class init {
        file = "ControlSector\functions\init";
        class init {};
    };
    class mission {
        file = "ControlSector\functions\mission";
        class mission_init {};
        class mission_setObjective {};
        class mission_spawn {};
        class mission_task {};
    };
    class systems {
        file = "ControlSector\functions\systems";
        class randomHash {};
        class getObjectiveData {};
        class getMissionType {};
        class setMissionType {};
    }
};
