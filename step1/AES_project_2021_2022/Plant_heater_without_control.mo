within AES_project_2021_2022;

model Plant_heater_without_control
  /* Simulation starts at hs:ms:ss*/
  parameter Real hs = 8;
  parameter Real ms = 0;
  parameter Real ss = 0;
  AES.ProcessComponents.Thermal.Liquid.Pressuriser pressuriser annotation(
    Placement(visible = true, transformation(origin = {-296, -234}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeh1(L = 50) annotation(
    Placement(visible = true, transformation(origin = {-178, -174}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeh2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {42, -174}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubec1(L = 50) annotation(
    Placement(visible = true, transformation(origin = {42, -240}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubec2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {-178, -240}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Valve_linear vh1(dpnom = 300000, wnom = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-46, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.Valve_linear vh2(dpnom = 300000, wnom = 2.2) annotation(
    Placement(visible = true, transformation(origin = {190, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.Tube h1(Di = 0.02, L = 5) annotation(
    Placement(visible = true, transformation(origin = {-26, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube h2(L = 50) annotation(
    Placement(visible = true, transformation(origin = {210, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Pump_centrifugal pump(dp0 = 600000, w0 = 30) annotation(
    Placement(visible = true, transformation(origin = {-266, -174}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tube closure(L = 1000) annotation(
    Placement(visible = true, transformation(origin = {294, -206}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES.ProcessComponents.Thermal.Liquid.Tube tubeheat annotation(
    Placement(visible = true, transformation(origin = {-332, -202}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES.ProcessComponents.Thermal.Liquid.DiffPressureSensor sDp annotation(
    Placement(visible = true, transformation(origin = {-224, -196}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.Tsensor sTh annotation(
    Placement(visible = true, transformation(origin = {-360, -174}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.surfQcond_prescribed Qheat(n = 5)  annotation(
    Placement(visible = true, transformation(origin = {-372, -230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Cz1(C = 1e4, T(displayUnit = "K", fixed = true, start = 273.15)) annotation(
    Placement(visible = true, transformation(origin = {4, 162}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor sTz1 annotation(
    Placement(visible = true, transformation(origin = {-98, 162}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor Gloss1(G = 80) annotation(
    Placement(visible = true, transformation(origin = {-26, 192}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Hsupz1 annotation(
    Placement(visible = true, transformation(origin = {-66, 142}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Math.Gain Psupz1(k = 500) annotation(
    Placement(visible = true, transformation(origin = {-66, 60}, extent = {{-4, -4}, {4, 4}}, rotation = 90)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature pTa annotation(
    Placement(visible = true, transformation(origin = {-190, 222}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Thermal.Liquid.VectorHPtoHP_conductor convz1 annotation(
    Placement(visible = true, transformation(origin = {-26, 142}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Hsupz2 annotation(
    Placement(visible = true, transformation(origin = {170, 144}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor sTz2 annotation(
    Placement(visible = true, transformation(origin = {130, 164}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Cz2(C = 1e4, T(displayUnit = "K", fixed = true, start = 273.15)) annotation(
    Placement(visible = true, transformation(origin = {258, 164}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  AES.ProcessComponents.Thermal.Liquid.VectorHPtoHP_conductor convz2 annotation(
    Placement(visible = true, transformation(origin = {210, 144}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G = 80) annotation(
    Placement(visible = true, transformation(origin = {210, 192}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Psupz2(k = 500) annotation(
    Placement(visible = true, transformation(origin = {170, 88}, extent = {{-4, -4}, {4, 4}}, rotation = 90)));
  inner AES.ProcessComponents.Thermal.System_settings.System_liquid system annotation(
    Placement(visible = true, transformation(origin = {-650, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.CombiTimeTable Tamb(extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 4, -2; 8, 8; 12, 10; 15, 10; 18, 3; 20, 1; 22, 0; 24, 0], timeScale = 3600) annotation(
    Placement(visible = true, transformation(origin = {-550, 222}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.CombiTimeTable sp_Tzones(extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = [0, 7; 7, 7; 8, 20; 17, 20; 20, 14; 22, 10; 24, 10], tableOnFile = false, timeScale = 3600, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-344, 118}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ControlBlocks.ActuationSchemes.DaisyChain_uniform daisyChain_z1(ns = 2)  annotation(
    Placement(visible = true, transformation(origin = {-144, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ControlBlocks.AnalogueControllers.PI_awfb_full pI_awfb_full_z1(CSmax = 2, CSmin = 0, K = 6, Ti = 40, hasTracking = false)  annotation(
    Placement(visible = true, transformation(origin = {-254.5, 65}, extent = {{-12.5, -25}, {12.5, 25}}, rotation = 0)));
  AES.ControlBlocks.ActuationSchemes.DaisyChain_uniform daisyChain_uniform(ns = 2) annotation(
    Placement(visible = true, transformation(origin = {118, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ControlBlocks.AnalogueControllers.PI_awfb_full pI_awfb_full_z2(CSmax = 2, CSmin = 0, K = 4, Ti = 50, hasLocks = false, hasTracking = false) annotation(
    Placement(visible = true, transformation(origin = {69.5, 101}, extent = {{-12.5, -25}, {12.5, 25}}, rotation = 0)));
  AES.ControlBlocks.AnalogueControllers.PI_awfb_full pI_awfb_full_LOheat(CSmax = 1, CSmin = 0, K = 8, Ti = 32,hasBias = true, hasTracking = false) annotation(
    Placement(visible = true, transformation(origin = {-608.5, -317}, extent = {{12.5, -25}, {-12.5, 25}}, rotation = 0)));
  AES.ControlBlocks.AnalogueControllers.PI_awfb_full pI_awfb_full_pump(CSmax = 1, CSmin = 0.000000001, K = 10, Ti = 42,hasBias = true, hasTracking = false) annotation(
    Placement(visible = true, transformation(origin = {-496.5, -69}, extent = {{13.5, 27}, {-13.5, -27}}, rotation = 0)));
  AES.ControlBlocks.AnalogueControllers.PI_awfb_full pI_awfb_full_HIheat(CSmax = 1, CSmin = 0, K = 2, Ti = 69,hasBias = true, hasTracking = false)  annotation(
    Placement(visible = true, transformation(origin = {-608, -216}, extent = {{12, -24}, {-12, 24}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression HI_limit(y = 50 + 273.15) annotation(
    Placement(visible = true, transformation(origin = {-550, -180}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression LO_limit(y = 40 + 273.15) annotation(
    Placement(visible = true, transformation(origin = {-550, -294}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-546, -260}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pref(y = 2 * 1e5) annotation(
    Placement(visible = true, transformation(origin = {-418, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 10000) annotation(
    Placement(visible = true, transformation(origin = {-394, -212}, extent = {{4, -4}, {-4, 4}}, rotation = 90)));
  AES.ControlBlocks.AnalogueControllers.TITOdecoupler_zeroInit tITOdecoupler_zeroInit annotation(
    Placement(visible = true, transformation(origin = {-424, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pump.pwh_b, tubeh1.pwh_a) annotation(
    Line(points = {{-254, -174}, {-190, -174}}, color = {46, 52, 54}));
  connect(tubeh1.pwh_b, vh1.pwh_a) annotation(
    Line(points = {{-166, -174}, {-46, -174}, {-46, 16}}, color = {46, 52, 54}));
  connect(vh1.pwh_b, h1.pwh_a) annotation(
    Line(points = {{-46, 40}, {-46, 48}, {-38, 48}}, color = {46, 52, 54}));
  connect(h1.pwh_b, tubec2.pwh_a) annotation(
    Line(points = {{-14, 48}, {-2, 48}, {-2, -240}, {-166, -240}}, color = {46, 52, 54}));
  connect(tubeh1.pwh_b, tubeh2.pwh_a) annotation(
    Line(points = {{-166, -174}, {30, -174}}, color = {46, 52, 54}));
  connect(tubeh2.pwh_b, vh2.pwh_a) annotation(
    Line(points = {{54, -174}, {190, -174}, {190, 16}}, color = {46, 52, 54}));
  connect(vh2.pwh_b, h2.pwh_a) annotation(
    Line(points = {{190, 40}, {190, 48}, {198, 48}}, color = {46, 52, 54}));
  connect(tubec1.pwh_b, tubec2.pwh_a) annotation(
    Line(points = {{30, -240}, {-166, -240}}, color = {46, 52, 54}));
  connect(h2.pwh_b, tubec1.pwh_a) annotation(
    Line(points = {{222, 48}, {238, 48}, {238, -240}, {54, -240}}, color = {46, 52, 54}));
  connect(pressuriser.pwh_b, tubec2.pwh_b) annotation(
    Line(points = {{-284, -240}, {-190, -240}}, color = {46, 52, 54}));
  connect(tubeh2.pwh_b, closure.pwh_a) annotation(
    Line(points = {{54, -174}, {294, -174}, {294, -194}}, color = {46, 52, 54}));
  connect(closure.pwh_b, tubec1.pwh_a) annotation(
    Line(points = {{294, -218}, {294, -240}, {54, -240}}, color = {46, 52, 54}));
  connect(tubeheat.pwh_b, pump.pwh_a) annotation(
    Line(points = {{-332, -190}, {-332, -174}, {-278, -174}}, color = {46, 52, 54}));
  connect(pressuriser.pwh_a, tubeheat.pwh_a) annotation(
    Line(points = {{-308, -240}, {-332, -240}, {-332, -214}}, color = {46, 52, 54}));
  connect(pump.pwh_b, sDp.pwh_hi) annotation(
    Line(points = {{-254, -174}, {-212, -174}, {-212, -190}}, color = {46, 52, 54}));
  connect(sDp.pwh_lo, pressuriser.pwh_b) annotation(
    Line(points = {{-212, -202}, {-212, -240}, {-284, -240}}, color = {46, 52, 54}));
  connect(sTh.pwh_a, tubeheat.pwh_b) annotation(
    Line(points = {{-348, -174}, {-332, -174}, {-332, -190}}, color = {46, 52, 54}));
  connect(Qheat.surf, tubeheat.surf) annotation(
    Line(points = {{-372, -239}, {-350, -239}, {-350, -201.667}, {-337, -201.667}}, color = {144, 5, 5}));
  connect(Cz1.port, Gloss1.port_b) annotation(
    Line(points = {{-16, 162}, {-26, 162}, {-26, 182}}, color = {191, 0, 0}));
  connect(Psupz1.y, Hsupz1.Q_flow) annotation(
    Line(points = {{-66, 64}, {-66, 132}}, color = {0, 0, 127}));
  connect(Cz1.port, Hsupz1.port) annotation(
    Line(points = {{-16, 162}, {-66, 162}, {-66, 152}}, color = {191, 0, 0}));
  connect(pTa.port, Gloss1.port_a) annotation(
    Line(points = {{-180, 222}, {-26, 222}, {-26, 202}}, color = {191, 0, 0}));
  connect(Cz1.port, convz1.HP) annotation(
    Line(points = {{-16, 162}, {-26, 162}, {-26, 146}}, color = {191, 0, 0}));
  connect(convz1.vectorHP, h1.surf) annotation(
    Line(points = {{-26, 138}, {-26, 54}}, color = {144, 5, 5}));
  connect(sTz1.port, Cz1.port) annotation(
    Line(points = {{-88, 162}, {-16, 162}}, color = {191, 0, 0}));
  connect(Psupz2.y, Hsupz2.Q_flow) annotation(
    Line(points = {{170, 92}, {170, 134}}, color = {0, 0, 127}));
  connect(h2.surf, convz2.vectorHP) annotation(
    Line(points = {{210, 54}, {210, 140}}, color = {144, 5, 5}));
  connect(convz2.HP, Cz2.port) annotation(
    Line(points = {{210, 148}, {210, 164}, {238, 164}}, color = {191, 0, 0}));
  connect(Cz2.port, Hsupz2.port) annotation(
    Line(points = {{238, 164}, {170, 164}, {170, 154}}, color = {191, 0, 0}));
  connect(sTz2.port, Cz2.port) annotation(
    Line(points = {{140, 164}, {238, 164}}, color = {191, 0, 0}));
  connect(pTa.port, thermalConductor.port_a) annotation(
    Line(points = {{-180, 222}, {210, 222}, {210, 202}}, color = {191, 0, 0}));
  connect(thermalConductor.port_b, Cz2.port) annotation(
    Line(points = {{210, 182}, {210, 164}, {238, 164}}, color = {191, 0, 0}));
  connect(Tamb.y[1], pTa.T) annotation(
    Line(points = {{-539, 222}, {-202, 222}}, color = {0, 0, 127}));
  connect(daisyChain_z1.CSo01[1], vh1.x) annotation(
    Line(points = {{-132, 28}, {-56, 28}}, color = {0, 0, 127}));
  connect(pI_awfb_full_z1.CS, daisyChain_z1.CSi01) annotation(
    Line(points = {{-242, 82.5}, {-217, 82.5}, {-217, 28}, {-156, 28}}, color = {0, 0, 127}));
  connect(pI_awfb_full_z2.CS, daisyChain_uniform.CSi01) annotation(
    Line(points = {{82, 118.5}, {95, 118.5}, {95, 48}, {106, 48}}, color = {0, 0, 127}));
  connect(pI_awfb_full_z2.PV, sTz2.T) annotation(
    Line(points = {{57, 113.5}, {42, 113.5}, {42, 164}, {120, 164}}, color = {0, 0, 127}));
  connect(sp_Tzones.y[1], pI_awfb_full_z2.SP) annotation(
    Line(points = {{-333, 118}, {-333, 118.5}, {57, 118.5}}, color = {0, 0, 127}));
  connect(sTz1.T, pI_awfb_full_z1.PV) annotation(
    Line(points = {{-108, 162}, {-382, 162}, {-382, 77.5}, {-267, 77.5}}, color = {0, 0, 127}));
  connect(daisyChain_uniform.CSo01[1], vh2.x) annotation(
    Line(points = {{130, 48}, {140, 48}, {140, 28}, {180, 28}}, color = {0, 0, 127}));
  connect(daisyChain_uniform.CSo01[2], Psupz2.u) annotation(
    Line(points = {{130, 48}, {170, 48}, {170, 83}}, color = {0, 0, 127}));
  connect(sDp.oDp, pI_awfb_full_pump.PV) annotation(
    Line(points = {{-222, -196}, {-236, -196}, {-236, -82.5}, {-483, -82.5}}, color = {0, 0, 127}));
  connect(pI_awfb_full_HIheat.CS, add1.u1) annotation(
    Line(points = {{-620, -199}, {-640, -199}, {-640, -254}, {-558, -254}}, color = {0, 0, 127}));
  connect(pI_awfb_full_LOheat.CS, add1.u2) annotation(
    Line(points = {{-621, -299.5}, {-640, -299.5}, {-640, -266}, {-558, -266}}, color = {0, 0, 127}));
  connect(pI_awfb_full_HIheat.SP, HI_limit.y) annotation(
    Line(points = {{-596, -200}, {-580.5, -200}, {-580.5, -180}, {-561, -180}}, color = {0, 0, 127}));
  connect(LO_limit.y, pI_awfb_full_LOheat.SP) annotation(
    Line(points = {{-561, -294}, {-580.5, -294}, {-580.5, -300}, {-596, -300}}, color = {0, 0, 127}));
  connect(sTh.oT, pI_awfb_full_HIheat.PV) annotation(
    Line(points = {{-358, -174}, {-478, -174}, {-478, -204}, {-596, -204}}, color = {0, 0, 127}));
  connect(pI_awfb_full_LOheat.PV, sTh.oT) annotation(
    Line(points = {{-596, -304}, {-446, -304}, {-446, -174}, {-358, -174}}, color = {0, 0, 127}));
  connect(daisyChain_z1.CSo01[2], Psupz1.u) annotation(
    Line(points = {{-132, 28}, {-66, 28}, {-66, 55}}, color = {0, 0, 127}));
  connect(Pref.y, pI_awfb_full_pump.SP) annotation(
    Line(points = {{-428, -90}, {-472, -90}, {-472, -88}, {-482, -88}}, color = {0, 0, 127}));
  connect(gain.y, Qheat.Q) annotation(
    Line(points = {{-394, -216}, {-394, -230}, {-380, -230}}, color = {0, 0, 127}));
  connect(tITOdecoupler_zeroInit.CS2, gain.u) annotation(
    Line(points = {{-414, -134}, {-394, -134}, {-394, -208}}, color = {0, 0, 127}));
  connect(pI_awfb_full_LOheat.Bias, tITOdecoupler_zeroInit.BiasToC2) annotation(
    Line(points = {{-608, -292}, {-608, -280}, {-496, -280}, {-496, -134}, {-434, -134}}, color = {0, 0, 127}));
  connect(tITOdecoupler_zeroInit.BiasToC2, pI_awfb_full_HIheat.Bias) annotation(
    Line(points = {{-434, -134}, {-608, -134}, {-608, -192}}, color = {0, 0, 127}));
  connect(add1.y, tITOdecoupler_zeroInit.CSfromC2) annotation(
    Line(points = {{-535, -260}, {-512, -260}, {-512, -138}, {-434, -138}}, color = {0, 0, 127}));
  connect(tITOdecoupler_zeroInit.BiasToC1, pI_awfb_full_pump.Bias) annotation(
    Line(points = {{-434, -126}, {-497, -126}, {-497, -96}}, color = {0, 0, 127}));
  connect(pump.cmd, tITOdecoupler_zeroInit.CS1) annotation(
    Line(points = {{-266, -166}, {-266, -126}, {-414, -126}}, color = {0, 0, 127}));
  connect(pI_awfb_full_pump.CS, tITOdecoupler_zeroInit.CSfromC1) annotation(
    Line(points = {{-510, -88}, {-529, -88}, {-529, -122}, {-434, -122}}, color = {0, 0, 127}));
  connect(sp_Tzones.y[1], pI_awfb_full_z1.SP) annotation(
    Line(points = {{-332, 118}, {-300, 118}, {-300, 82}, {-268, 82}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-660, 280}, {320, -340}}), graphics = {Text(origin = {-257, 20}, extent = {{-91, 6}, {91, -6}}, textString = "Local control Zone 1"), Text(origin = {73, 69}, extent = {{-91, 7}, {91, -7}}, textString = "Local control Zone 2"), Text(origin = {-584, -67}, extent = {{-68, 5}, {68, -5}}, textString = "Central Control"), Text(extent = {{-624, 122}, {-624, 122}}, textString = "Dobbiamo capire bene come funziona il tracking nei controllori  (Nota by D.Z.)")}),
    experiment(StartTime = 0, StopTime = 864000, Tolerance = 1e-6, Interval = 86.4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end Plant_heater_without_control;
