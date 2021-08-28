.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.super Ljava/lang/Object;
.source "IUserAgent.java"


# virtual methods
.method public abstract deregisterLocal()V
.end method

.method public abstract getErrorCode()Lcom/sec/ims/util/SipError;
.end method

.method public abstract getImsProfile()Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getImsRegistration()Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getNetwork()Landroid/net/Network;
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getStateName()Ljava/lang/String;
.end method

.method public abstract getSuspendState()Z
.end method

.method public abstract isDeregistring()Z
.end method

.method public abstract isRegistering()Z
.end method

.method public abstract notifyE911RegistrationFailed()V
.end method

.method public abstract updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
.end method

.method public abstract updateRat(I)V
.end method

.method public abstract updateVceConfig(Z)V
.end method
