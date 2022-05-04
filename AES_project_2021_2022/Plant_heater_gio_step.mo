within AES_project_2021_2022;

model Plant_heater_gio_step
  /* Simulation starts at hs:ms:ss*/
  parameter Real hs = 8;
  parameter Real ms = 0;
  parameter Real ss = 0;
  AES.ProcessComponents.Thermal.Liquid.Pressuriser pressuriser annotation(
    Placement(visible = true, transformation(origin = {-296, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeh1(L = 50) annotation(
    Placement(visible = true, transformation(origin = {-178, -2}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeh2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {42, -2}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubec1(L = 50) annotation(
    Placement(visible = true, transformation(origin = {42, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubec2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {-178, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Valve_linear vh1(dpnom = 300000, wnom = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-46, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.Valve_linear vh2(dpnom = 300000, wnom = 2.2) annotation(
    Placement(visible = true, transformation(origin = {190, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.Tube h1(Di = 0.02, L = 5) annotation(
    Placement(visible = true, transformation(origin = {-26, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube h2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {210, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Pump_centrifugal pump(dp0 = 600000, w0 = 30) annotation(
    Placement(visible = true, transformation(origin = {-242, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube closure(L = 1000) annotation(
    Placement(visible = true, transformation(origin = {294, -34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeheat annotation(
    Placement(visible = true, transformation(origin = {-332, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.DiffPressureSensor sDp annotation(
    Placement(visible = true, transformation(origin = {-224, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tsensor sTh annotation(
    Placement(visible = true, transformation(origin = {-364, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.surfQcond_prescribed Qheat annotation(
    Placement(visible = true, transformation(origin = {-366, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Cz1(C = 1e4, T(displayUnit = "K")) annotation(
    Placement(visible = true, transformation(origin = {4, 88}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor sTz1 annotation(
    Placement(visible = true, transformation(origin = {-98, 88}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Gloss1(G = 80) annotation(
    Placement(visible = true, transformation(origin = {-26, 118}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Hsupz1 annotation(
    Placement(visible = true, transformation(origin = {-66, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Math.Gain Psupz1(k = 500) annotation(
    Placement(visible = true, transformation(origin = {-66, 44}, extent = {{-4, -4}, {4, 4}}, rotation = 90)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature pTa annotation(
    Placement(visible = true, transformation(origin = {-190, 148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.VectorHPtoHP_conductor convz1 annotation(
    Placement(visible = true, transformation(origin = {-26, 68}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Hsupz2 annotation(
    Placement(visible = true, transformation(origin = {170, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor sTz2 annotation(
    Placement(visible = true, transformation(origin = {130, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Cz2(C = 1e4, T(displayUnit = "K")) annotation(
    Placement(visible = true, transformation(origin = {258, 90}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  AES.ProcessComponents.Thermal.Liquid.VectorHPtoHP_conductor convz2 annotation(
    Placement(visible = true, transformation(origin = {210, 70}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G = 80) annotation(
    Placement(visible = true, transformation(origin = {210, 118}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Psupz2(k = 500) annotation(
    Placement(visible = true, transformation(origin = {170, 44}, extent = {{-4, -4}, {4, 4}}, rotation = 90)));
  inner AES.ProcessComponents.Thermal.System_settings.System_liquid system annotation(
    Placement(visible = true, transformation(origin = {-370, 150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.CombiTimeTable Tamb(extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 4, -2; 8, 8; 12, 10; 15, 10; 18, 3; 20, 1; 22, 0; 24, 0], timeScale = 3600) annotation(
    Placement(visible = true, transformation(origin = {-312, 148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.CombiTimeTable sp_Tzones(extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = [0, 7; 7, 7; 8, 20; 17, 20; 20, 14; 22, 10; 24, 10], timeScale = 3600) annotation(
    Placement(visible = true, transformation(origin = {-310, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step(height = 1, startTime = 1)  annotation(
    Placement(visible = true, transformation(origin = {-450, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 0)  annotation(
    Placement(visible = true, transformation(origin = {-452, -116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step2(height = 10000, startTime = 1) annotation(
    Placement(visible = true, transformation(origin = {-452, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pump.pwh_b, tubeh1.pwh_a) annotation(
    Line(points = {{-230, -2}, {-190, -2}}, color = {46, 52, 54}));
  connect(tubeh1.pwh_b, vh1.pwh_a) annotation(
    Line(points = {{-166, -2}, {-46, -2}, {-46, 16}}, color = {46, 52, 54}));
  connect(vh1.pwh_b, h1.pwh_a) annotation(
    Line(points = {{-46, 40}, {-46, 48}, {-38, 48}}, color = {46, 52, 54}));
  connect(h1.pwh_b, tubec2.pwh_a) annotation(
    Line(points = {{-14, 48}, {-2, 48}, {-2, -68}, {-166, -68}}, color = {46, 52, 54}));
  connect(tubeh1.pwh_b, tubeh2.pwh_a) annotation(
    Line(points = {{-166, -2}, {30, -2}}, color = {46, 52, 54}));
  connect(tubeh2.pwh_b, vh2.pwh_a) annotation(
    Line(points = {{54, -2}, {190, -2}, {190, 16}}, color = {46, 52, 54}));
  connect(vh2.pwh_b, h2.pwh_a) annotation(
    Line(points = {{190, 40}, {190, 48}, {198, 48}}, color = {46, 52, 54}));
  connect(tubec1.pwh_b, tubec2.pwh_a) annotation(
    Line(points = {{30, -68}, {-166, -68}}, color = {46, 52, 54}));
  connect(h2.pwh_b, tubec1.pwh_a) annotation(
    Line(points = {{222, 48}, {238, 48}, {238, -68}, {54, -68}}, color = {46, 52, 54}));
  connect(pressuriser.pwh_b, tubec2.pwh_b) annotation(
    Line(points = {{-284, -68}, {-190, -68}}, color = {46, 52, 54}));
  connect(tubeh2.pwh_b, closure.pwh_a) annotation(
    Line(points = {{54, -2}, {294, -2}, {294, -22}}, color = {46, 52, 54}));
  connect(closure.pwh_b, tubec1.pwh_a) annotation(
    Line(points = {{294, -46}, {294, -68}, {54, -68}}, color = {46, 52, 54}));
  connect(tubeheat.pwh_b, pump.pwh_a) annotation(
    Line(points = {{-332, -18}, {-332, -2}, {-254, -2}}, color = {46, 52, 54}));
  connect(pressuriser.pwh_a, tubeheat.pwh_a) annotation(
    Line(points = {{-308, -68}, {-332, -68}, {-332, -42}}, color = {46, 52, 54}));
  connect(pump.pwh_b, sDp.pwh_hi) annotation(
    Line(points = {{-230, -2}, {-212, -2}, {-212, -18}}, color = {46, 52, 54}));
  connect(sDp.pwh_lo, pressuriser.pwh_b) annotation(
    Line(points = {{-212, -30}, {-212, -68}, {-284, -68}}, color = {46, 52, 54}));
  connect(sTh.pwh_a, tubeheat.pwh_b) annotation(
    Line(points = {{-352, -2}, {-332, -2}, {-332, -18}}, color = {46, 52, 54}));
  connect(Qheat.surf, tubeheat.surf) annotation(
    Line(points = {{-366, -38.6667}, {-350, -38.6667}, {-350, -30.6667}, {-338, -30.6667}}, color = {144, 5, 5}));
  connect(Cz1.port, Gloss1.port_b) annotation(
    Line(points = {{-16, 88}, {-26, 88}, {-26, 108}}, color = {191, 0, 0}));
  connect(Psupz1.y, Hsupz1.Q_flow) annotation(
    Line(points = {{-66, 48.4}, {-66, 58.4}}, color = {0, 0, 127}));
  connect(Cz1.port, Hsupz1.port) annotation(
    Line(points = {{-16, 88}, {-66, 88}, {-66, 78}}, color = {191, 0, 0}));
  connect(pTa.port, Gloss1.port_a) annotation(
    Line(points = {{-180, 148}, {-26, 148}, {-26, 128}}, color = {191, 0, 0}));
  connect(Cz1.port, convz1.HP) annotation(
    Line(points = {{-16, 88}, {-26, 88}, {-26, 72}}, color = {191, 0, 0}));
  connect(convz1.vectorHP, h1.surf) annotation(
    Line(points = {{-26, 64}, {-26, 54}}, color = {144, 5, 5}));
  connect(sTz1.port, Cz1.port) annotation(
    Line(points = {{-88, 88}, {-16, 88}}, color = {191, 0, 0}));
  connect(Psupz2.y, Hsupz2.Q_flow) annotation(
    Line(points = {{170, 48}, {170, 60}}, color = {0, 0, 127}));
  connect(h2.surf, convz2.vectorHP) annotation(
    Line(points = {{210, 54}, {210, 66}}, color = {144, 5, 5}));
  connect(convz2.HP, Cz2.port) annotation(
    Line(points = {{210, 74}, {210, 90}, {238, 90}}, color = {191, 0, 0}));
  connect(Cz2.port, Hsupz2.port) annotation(
    Line(points = {{238, 90}, {170, 90}, {170, 80}}, color = {191, 0, 0}));
  connect(sTz2.port, Cz2.port) annotation(
    Line(points = {{140, 90}, {238, 90}}, color = {191, 0, 0}));
  connect(pTa.port, thermalConductor.port_a) annotation(
    Line(points = {{-180, 148}, {210, 148}, {210, 128}}, color = {191, 0, 0}));
  connect(thermalConductor.port_b, Cz2.port) annotation(
    Line(points = {{210, 108}, {210, 90}, {238, 90}}, color = {191, 0, 0}));
  connect(Tamb.y[1], pTa.T) annotation(
    Line(points = {{-301, 148}, {-202, 148}}, color = {0, 0, 127}));
  connect(step.y, pump.cmd) annotation(
    Line(points = {{-439, 50}, {-242, 50}, {-242, 6}}, color = {0, 0, 127}));
  connect(Psupz1.u, step1.y) annotation(
    Line(points = {{-66, 40}, {-66, -116}, {-441, -116}}, color = {0, 0, 127}));
  connect(vh1.x, step1.y) annotation(
    Line(points = {{-56, 28}, {-392, 28}, {-392, -116}, {-441, -116}}, color = {0, 0, 127}));
  connect(Psupz2.u, step1.y) annotation(
    Line(points = {{170, 40}, {170, -116}, {-441, -116}}, color = {0, 0, 127}));
  connect(vh2.x, step1.y) annotation(
    Line(points = {{180, 28}, {-392, 28}, {-392, -116}, {-441, -116}}, color = {0, 0, 127}));
  connect(step2.y, Qheat.Q) annotation(
    Line(points = {{-441, -30}, {-374, -30}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-480, 160}, {300, -140}})),
    experiment(StartTime = 0, StopTime = 864000, Tolerance = 1e-6, Interval = 86.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Plant_heater_gio_step;
