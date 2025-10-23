* Surveys on UAM/eVTOL
    * 1
    * 2

* VPM
    * 1
    * 2

* Trajectory Optimization
    * Tilt-Wing eVTOL Takeoff Trajectory Optimization
        * Exploration of stall and acceleration constraints. Tilt wing configurations tend to operate near stall
    * Tiltwing eVTOL Transition Trajectory Optimization
        * Tilt wing trajectory optimization with active flow control to prevent stall. Suggests that intelligent airfoil design could enhace performance during these transitions
    * Wind-Optimal Trajectories for Multirotor eVTOL Aircraft on UAM Missions
        * Wind modeling is included into the optimization to quantify the affect of wind
    * Trajectory optimization for takeoff and landing phase of UAM considering energy and safety
        * Energy minimization with vortex ring state avoidance constraint
    * An Obstacle Avoidance Trajectory Planning Methodology Based on Energy Minimization (OTPEM) for the Tilt-Wing eVTOL in the Takeoff Phase
        * Obstacle avoidance during tilt-wing takeoff trajectory
    * Trajectory Optimization of eVTOL and Conventional Aircraft: A Comparative Analysis of Vortex Particle Method and Vortex Lattice + Blade Element Momentum Theory
        * Inner outer loop - how control influences trajectory
    * Multi-resolution Trajectory Optimization of eVTOL Aircraft Using Capacity Collocation
        * Capacity derivvatives - how energy influences trajectory
    * Transition Flight Trajectory Optimization for a Flapping-Wing Micro Air Vehicle with Unsteady Vortex-Lattice Method
        * Unsteady VLM for flapping insect-inspired aircraft trajectory optimization
    * Perching trajectory optimization using aerodynamic and thrust vectoring
        * Thrust vectoring/wing tilting for perching maneuver using low fidelity
    * Coupled Trajectory and Aerostructural Optimization of a UAV with Modular Morphing Wings
        * Using wing morphing in trajectory optimization shows improved control

* Design Optimization
    * Large-Scale Multidisciplinary Design Optimization of an eVTOL Aircraft using Comprehensive Analysis
        * MDO of a lift + cruise, considering many subsystems
    * Comprehensive multi-disciplinary design of an electric vertical take-off and landing aircraft
        * Design optimization using predefined trajectories and including many disciplines
    * EVTOL aircraft conceptual design and optimization
        * A mission profile is predefined and design sensitivities are explored
    * Design-Oriented Computational Fluid Dynamics-Based Unsteady Aerodynamics for Flight-Vehicle Aeroelastic Shape Optimization
        * Basically passing derivatives through a CFD code, but not optimizing
    * Modeling Viscous Transonic Limit Cycle Oscillation Behavior Using a Harmonic Balance Approach
        * Harmonic balance method for modelling oscillations
    * Discrete Adjoint Approach for Nonlinear Unsteady Aeroelastic Design Optimization
        * Harmonic balance method used in airfoil shape optimization

* Co-design of trajectory and aircraft
    * Tiltwing eVTOL Transition Trajectory Optimization
        * Tilt wing trajectory optimization with active flow control to prevent stall. Suggests that intelligent airfoil design could enhace performance during these transitions
    * Flight analysis and optimization design of vectored thrust eVTOL based on cooperative flight/propulsion control
        * Trajectory optimization is used to inform design decisions like battery sizing for a tilting ducted fan aircraft
    * Simultaneous optimization of design and takeoff trajectory for an eVTOL aircraft
        * Co-design of the trajectory and the aircraft
    * Simultaneous Design and Trajectory Optimization Strategies for Computationally Expensive Models
        * Comparison of methods for coupling optimization problems for an aircraft climb trajectory, surrogate modeling explored


* Control law design
    * Modelling and Control of Transition Flight of an eVTOL Tandem Tilt-Wing Aircraft
        * Gain scheduling LQR to based on a nominal transition trajectory
    * LPV Model-based Adaptive MPC of an eVTOL Aircraft During Tilt Transition Subject to Motor Failure
        * LTV modeling and MPC for a tilt-rotor transition - one engine out condition
    * OPTIMAL CONTROL IN THE TRANSITION PHASE OF AN EVTOL UAV IN A HYBRID CONFIGURATION
        * Optimal control of lift+cruise transition
    * Robust Control of an eVTOL through Transition with a Gain Scheduling LQR Controller
        * LQR gain scheduling
    * Robust Full-Envelope Flight Control Design for an eVTOL Vehicle
        * Robust control methods like H infinity is used to develop a single controller for hover and cruise
    * Control of an eVTOL using Nonlinear Dynamic Inversion
        * Control during various flight regimes by switching between distinct controllers
    * Minimum-Time Trajectory Generation of eVTOL in Low-Speed Phase: Application in Control Law Design
        * Trajectory optimization is then used to formulate control law
    * Real-Time Planning and Control with a Vortex Particle Model for Fixed-Wing UAVs in Unsteady Flows
        * 2D lightweight VPM informed control of a perching maneuver
    * Output feedback nonlinear control of an aeroelastic system with unsteady aerodynamics 
        * Pitch wing unsteady aeroelastic control
    * Rotorcraft control response using linearised and non-linear flight dynamic models with different inflow models
        * simple model to analyse trim from rotor craft at different steady states
    * A CFD-based analysis of dynamic induction techniques for wind farm control applications
        * PID control of wind turbine pitch simulated in CFD
    * Aircraft Stability and Control Characteristics Determined by System Identification of CFD Simulations
        * System ID from CFD simulations
    * CFD based parameter tuning for motion control of robotic fish
        * Tuning parameters off of CFD simulation
    * Towards an Efficient Aircraft Stability and Control Analysis Capability using High-Fidelity CFD
        * Stability and control derivatives using CFD


* Effect of model fidelity on optimization
    * A Comparison of Aerodynamics Models for Optimizing the Takeoff and Transition of a Bi-wing Tailsitter
        * Comparison of models
    * Trajectory Optimization of eVTOL and Conventional Aircraft: A Comparative Analysis of Vortex Particle Method and Vortex Lattice + Blade Element Momentum Theory
        * Comparison of VLM-BEM and VPM
    * Tiltwing Multi-Rotor Aerodynamic Modeling in Hover, Transition and Cruise Flight Conditions
        * Considering trim states separately
    * Precision Landing Trajectory Optimization for eVTOL Vehicles with High-Fidelity Aerodynamic Models
        * Trajectory optimization using thrust coefficient ODE
    * Optimal Landing Control of eVTOL Vehicles Using ODE-Based Aerodynamic Model
        * Trajectory optimization using thrust coefficient ODE
    * 3-D Vortex Particle Aerodynamic Modeling and Trajectory Optimization of Perching Maneuvers
        * Vortex particle method used to model a flat plate during perching maneuver
    * Planning and Control for a Dynamic Morphing-Wing UAV Using a Vortex Particle Model
        * 2D VPM used for trajectory planning, then control for morphing wing, real time planning was not achieved
    * Unsteady aerodynamics modeling for flight dynamics application
        * Quntifying steady vs unsteady effects on a wing with control surfaces
    * Multi-Fidelity Approach to Predicting Multi-Rotor Aerodynamic Interactions
        * Using sparse high fidelity simulations to improve upon low fidelity results
    

* Machine Learning
    * Physics-Constrained Generative Artificial Intelligence for Rapid Takeoff Trajectry Design
        * Physics constrained surrogate to generate feasible trajectories and speed up optimization
    * Optimal Tilt-Wing eVTOL Takeoff Trajectory Prediction Using Regression Generative Adversarial Networks
        * GAN surrogate model used in trajectory prediciton. Inverse map to accept flight requirements and output optimal trajectory. Trained using simple aerodynamics
    * Performance Modeling and Trajectory Optimization of eVTOL Using RBF Neural Network
        * RBF neural network surrogate trained to be used in trajectory optimization
    * Deep Reinforcement Learning for Optimal Takeoff Trajectory Design of an eVTOL Drone
        * Reinforcement learning is applied to increase real world applicability.
    * Surrogate-Based Multidisciplinary Optimization for the Takeoff Trajectory Design of Electric Drones
        * GAN surogate model used to reduce design space dimensionality and produce feasible trajectories
    * CFD assisted modeling for control system design: A case study
        * System identification from CFD data

* Deep learning
    * Real-time prediction of unsteady aerodynamics: Application for aircraft control and manoeuvrability enhancement
        * Neural networks to predict unsteady flows/coefficients data from a pitching airfoil
    * A Data Augmentation-Based Technique for Deep Learning Applied to CFD Simulations
        * CNNS applied to CFD
    * Aerodynamic flow analysis using conditional convolutional autoencoder in various flow conditions and application to CFD-based design optimization
        * Also CNN applied to CFD
    * Fast Predictions of Aircraft Aerodynamics Using Deep-Learning Techniques
        * Basic neural network training
    * A Neural ODE Approach to Aircraft Flight Dynamics Modelling
        * Neural ODE for flight dynamics
    * Development and Implementation of Physics-Informed Neural ODE for Dynamics Modeling of a Fixed-Wing Aircraft Under Icing/Fault
        * Physics informed NODE
    * Accelerating CFD Simulations With Super-Resolution Feedback-Informed Adaptive Mesh Refinement
        * Using super-resolution to inform adaptive mesh refinement
    * Super-resolution and denoising of fluid flow using physics-informed convolutional neural networks without high-resolution labels
        * Constructing high resolution from low resolution
    * A deep-learning super-resolution reconstruction model of turbulent reacting flow
        * Also high from low
    * Physics-informed neural networks: A deep learning framework for solving forward and inverse problems involving nonlinear partial differential equations
        * PINN Paper
    * A physics-informed neural network-based aerodynamic parameter identification method for aircraft
        * Using PINNS to learn parameters
    * Flight Dynamics Modeling Using Physics-Informed Neural Networks
        * PINNS to learn flight dynamics

* Koopman
    * Korda, M. and Mezi´c, I. (2018). Linear predictors for nonlinear dynamical systems: Koopman operator meets model predictive control. Automatica, 93:149–160.
        * Koopman and MPC
    * [1] Abraham, I., Torre, G. D. L., and Murphey, T. D. (2017). Model-based control using koopman operators.
        * Koopman for control
    * Zinage, V. and Bakolas, E. (2021). Koopman operator based modeling for quadrotor control on se(3). arXiv preprint.
        * For quadrotors
    * EDMD
        * Extending the extended dynamic mode decomposition with latent observables: the latent EDMD framework
    * Physics-Informed Koopman Network
        * PIKN
    * Neural Koopman

