.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;
.super Ljava/lang/Object;
.source "UploadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadTaskCallback"
.end annotation


# virtual methods
.method public abstract onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
.end method

.method public abstract onCompleted(Ljava/lang/String;)V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onProgressUpdate(J)V
.end method

.method public abstract onStarted()V
.end method
