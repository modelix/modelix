package org.modelix.keycloak;

import org.keycloak.authorization.AuthorizationProvider;
import org.keycloak.authorization.model.Policy;
import org.keycloak.authorization.policy.evaluation.Evaluation;
import org.keycloak.authorization.policy.provider.PolicyProvider;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
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
        Set<String> owners = new HashSet<>();
        String owner = evaluation.getPermission().getResource().getOwner();
        if (owner != null) owners.add(owner);
        List<String> createdBy = evaluation.getPermission().getResource().getAttribute("created-by");
        if (createdBy != null) owners.addAll(createdBy);
        String user = evaluation.getContext().getIdentity().getId();

        if (owners.contains(user)) {
            evaluation.grant();
        }
    }
}
