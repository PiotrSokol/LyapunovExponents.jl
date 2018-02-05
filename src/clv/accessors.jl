module CLV
using ..CovariantVectors: ForwardDynamics, BackwardRelaxer, BackwardDynamics,
    ForwardDynamicsWithGHistory, BackwardDynamicsWithCHistory

R(fitr::ForwardDynamics) = fitr.le_solver.R
G(fitr::ForwardDynamics) = fitr.stage.le_solver.tangent_state
G(fitr::ForwardDynamicsWithGHistory) = fitr.stage.le_solver.tangent_state
C(bitr::Union{BackwardRelaxer, BackwardDynamics}) = bitr.C
C(bitr::BackwardDynamicsWithCHistory) = C(bitr.stage)

end