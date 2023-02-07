package org.modelix.keycloak;

import org.keycloak.Config.Scope;
import org.keycloak.authorization.AuthorizationProvider;
import org.keycloak.authorization.model.Policy;
import org.keycloak.authorization.policy.provider.PolicyProvider;
import org.keycloak.authorization.policy.provider.PolicyProviderFactory;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.KeycloakSessionFactory;
import org.keycloak.representations.idm.authorization.PolicyRepresentation;

import java.util.HashMap;
import java.util.Map;

public class GrantOwnerPolicyProviderFactory implements PolicyProviderFactory<GrantOwnerPolicyRepresentation> {

    static {
        System.out.println(GrantOwnerPolicyProviderFactory.class.getName() + " loaded");
    }

    private GrantOwnerPolicyProvider provider = new GrantOwnerPolicyProvider(this::toRepresentation);

    @Override
    public PolicyProvider create(KeycloakSession session) {
        return provider;
    }

    @Override
    public void init(Scope config) {
        System.out.println(GrantOwnerPolicyProviderFactory.class.getName() + " initialized");
    }

    @Override
    public void postInit(KeycloakSessionFactory factory) {
    }

    @Override
    public void close() {
    }

    @Override
    public String getId() {
        return "grant-owner";
    }

    @Override
    public String getName() {
        return "Grant Owner";
    }

    @Override
    public String getGroup() {
        return "Identity Based";
    }

    @Override
    public PolicyProvider create(AuthorizationProvider authorization) {
        return provider;
    }

    @Override
    public GrantOwnerPolicyRepresentation toRepresentation(Policy policy, AuthorizationProvider authorization) {
        GrantOwnerPolicyRepresentation representation = new GrantOwnerPolicyRepresentation();
        Map<String, String> config = policy.getConfig();
        // config.get()
        return representation;
    }

    @Override
    public Class<GrantOwnerPolicyRepresentation> getRepresentationType() {
        return GrantOwnerPolicyRepresentation.class;
    }

    @Override
    public void onCreate(Policy policy, GrantOwnerPolicyRepresentation representation, AuthorizationProvider authorization) {
        updatePolicy(policy, representation);
    }

    @Override
    public void onUpdate(Policy policy, GrantOwnerPolicyRepresentation representation, AuthorizationProvider authorization) {
        updatePolicy(policy, representation);
    }

    @Override
    public void onImport(Policy policy, PolicyRepresentation representation, AuthorizationProvider authorization) {
        policy.setConfig(representation.getConfig());
    }

    private void updatePolicy(Policy policy, GrantOwnerPolicyRepresentation representation) {
        Map<String, String> config = new HashMap<>(policy.getConfig());

        //config.put("", );

        policy.setConfig(config);
    }
}
