package org.modelix.keycloak;

import org.keycloak.authorization.AuthorizationProvider;
import org.keycloak.authorization.model.Policy;
import org.keycloak.authorization.policy.evaluation.Evaluation;
import org.keycloak.authorization.policy.provider.PolicyProvider;

import java.util.Objects;
import java.util.function.BiFunction;

public class GrantOwnerPolicyProvider implements PolicyProvider {

    private final BiFunction<Policy, AuthorizationProvider, GrantOwnerPolicyRepresentation> representationFunction;

    public GrantOwnerPolicyProvider(BiFunction<Policy, AuthorizationProvider, GrantOwnerPolicyRepresentation> representationFunction) {
        this.representationFunction = representationFunction;
    }

    @Override
    public void close() {
    }

    @Override
    public void evaluate(Evaluation evaluation) {
        AuthorizationProvider authorizationProvider = evaluation.getAuthorizationProvider();
        //GrantOwnerPolicyRepresentation policy = representationFunction.apply(evaluation.getPolicy(), authorizationProvider);
        String owner = evaluation.getPermission().getResource().getOwner();
        String user = evaluation.getContext().getIdentity().getId();

        if (Objects.equals(owner, user)) {
            evaluation.grant();
        }
    }
}
