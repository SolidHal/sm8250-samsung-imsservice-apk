.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
.super Ljava/lang/Object;
.source "IWorkingStatusProvisionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;
    }
.end annotation


# virtual methods
.method public abstract onChannelStateReset()V
.end method

.method public abstract onCleanBufferDbRequired()V
.end method

.method public abstract onCloudSyncWorkingStopped()V
.end method

.method public abstract onDeviceFlagUpdateSchedulerStarted()V
.end method

.method public abstract onInitialDBSyncCompleted()V
.end method

.method public abstract onMailBoxMigrationReset()V
.end method

.method public abstract onNetworkChangeDetected()V
.end method

.method public abstract onOmaFailExceedMaxCount()V
.end method

.method public abstract onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
.end method

.method public abstract onProvisionSuccess()V
.end method

.method public abstract onRestartService()V
.end method

.method public abstract onUserDeleteAccount(Z)V
.end method
