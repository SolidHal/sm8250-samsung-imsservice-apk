.class public interface abstract Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.super Ljava/lang/Object;
.source "ICmcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
    }
.end annotation


# virtual methods
.method public abstract getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
.end method

.method public abstract getCmcSaServerUrl()Ljava/lang/String;
.end method

.method public abstract getCurrentLineOwnerDeviceId()Ljava/lang/String;
.end method

.method public abstract getCurrentLineSlotIndex()I
.end method

.method public abstract getProfileUpdatedResult()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
.end method

.method public abstract getRegiEventNotifyHostInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSecondaryDevice()Z
.end method

.method public abstract isCmcActivated()Z
.end method

.method public abstract isCmcDeviceActivated()Z
.end method

.method public abstract isCmcEnabled()Z
.end method

.method public abstract isCmcProfileAdded()Z
.end method

.method public abstract isSecondaryDevice()Z
.end method

.method public abstract isWifiOnly()Z
.end method

.method public abstract notifyCmcDeviceChanged()V
.end method

.method public abstract onSimRefresh(I)V
.end method

.method public abstract setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startCmcRegistration()V
.end method

.method public abstract startSAService(Z)V
.end method
