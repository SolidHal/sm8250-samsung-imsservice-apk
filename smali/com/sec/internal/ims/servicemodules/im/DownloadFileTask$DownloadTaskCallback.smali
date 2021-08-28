.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadTaskCallback"
.end annotation


# virtual methods
.method public abstract onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
.end method

.method public abstract onCompleted(J)V
.end method

.method public abstract onProgressUpdate(J)V
.end method
