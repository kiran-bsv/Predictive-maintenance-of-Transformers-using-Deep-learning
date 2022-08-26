# Predictive-maintenance-of-Transformers-using-Deep-learning

Predictive maintenance, also called condition-based maintenance is a pro-active maintenance strategy that monitors the condition and performance of an asset in real-time to predict when an asset needs a maintenance before it breaks down. A small increase in prediction accuracy can bring up huge profits and savings .So we always strive towards increasing accuracy, efficiency, and productivity.

This predictive maintenance is used vastly in many fields. Some examples are mentioned below- \
Airbus detects defects in aircraft pipes with semantic segmentation.\
siemens develops health monitoring system for distribution transformers.\
RWE Renewables detects anomalies in wind turbine bearings using neural networks.\
Mondi develops and deploys algorithms to predict plastic production machine failures.

Datasets required for this were taken from https://www.sciencedirect.com/science/article/pii/S2352340921007368

# Algorithms and network training function

We have used TRAINLM , which is a network training function that updates weight and predicts values according to
Levenberg-Marquardt optimization. It takes (net,Pd,Tl,Ai,Q,TS,VV,TV) as inputs , where\
● net -- Neural network.\
  Pd -- Delayed input vectors.\
  Tl -- Layer target vectors.\
  Ai -- Initial input delay conditions.\
  Q -- Batch size.\
  TS -- Time steps.\
  VV -- Either empty matrix [] or structure of validation vectors.\
  TV -- Either empty matrix [] or structure of validation vectors.\
and returns,\
● net -- Trained network.\
  TR -- Training record of various values over each epoch:\
  TR.epoch -- Epoch number.\
  TR.perf -- Training performance.\
  TR.vperf -- Validation performance.\
  TR.tperf -- Test performance.\
  TR.mu -- Adaptive mu value.
