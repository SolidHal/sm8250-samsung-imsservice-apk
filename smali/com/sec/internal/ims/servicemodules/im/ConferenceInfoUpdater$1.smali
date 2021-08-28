.class Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;
.super Ljava/lang/Object;
.source "ConferenceInfoUpdater.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

.field final synthetic val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    .line 192
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    .locals 3
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "retryTime"    # I
    .param p3, "errorCode"    # I

    .line 207
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading Group Icon was failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public onCompleted(J)V
    .locals 4
    .param p1, "transferred"    # J

    .line 200
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading Group Icon has been completed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->setIconLocation(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    const/16 v3, 0x7e0

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 3
    .param p1, "transferred"    # J

    .line 195
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading Group Icon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
