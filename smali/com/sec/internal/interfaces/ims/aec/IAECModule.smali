.class public interface abstract Lcom/sec/internal/interfaces/ims/aec/IAECModule;
.super Ljava/lang/Object;
.source "IAECModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract dump()V
.end method

.method public abstract getAkaToken(I)Ljava/lang/String;
.end method

.method public abstract getSMSoIpEntitlementStatus(I)Z
.end method

.method public abstract getVoLteEntitlementStatus(I)Z
.end method

.method public abstract getVoWiFiEntitlementStatus(I)Z
.end method

.method public abstract isEntitlementDisabled(I)Z
.end method

.method public abstract isEntitlementRequired(I)Z
.end method

.method public abstract triggerAutoConfigForApp(I)V
.end method
