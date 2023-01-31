package org.modelix.keycloak;

import org.keycloak.representations.idm.authorization.AbstractPolicyRepresentation;

public class GrantOwnerPolicyRepresentation extends AbstractPolicyRepresentation {

    @Override
    public String getType() {
        return "grant-owner";
    }

}
