.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
.super Ljava/lang/Object;
.source "IBufferDBEventListener.java"


# virtual methods
.method public abstract notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
.end method

.method public abstract notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
