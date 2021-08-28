.class Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "CentralMsgStoreInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;-><init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 95
    :goto_0
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "threadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldLegacyMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteParticipant(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteSession(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableAutoSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 119
    :goto_0
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSync jsonSummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setImpuFromImsRegistration(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "rowIDs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "screenName"    # I
    .param p3, "style"    # Ljava/lang/String;
    .param p4, "para1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    return-void
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "bufferRowId"    # Ljava/lang/String;
    .param p4, "appMessageId"    # Ljava/lang/String;
    .param p5, "syncAction"    # I
    .param p6, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bufferRowID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appMessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$500(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getIsInitSyncIndicatorRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    .local v0, "rowID":I
    if-gez v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    .line 182
    return-void

    .line 185
    .end local v0    # "rowID":I
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->bufferDbReadBatchMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 202
    :goto_0
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDBReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "JsonRoot":Lorg/json/JSONObject;
    const-string v1, "cms_profile_event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "eventType":Ljava/lang/String;
    const-string/jumbo v2, "sim_status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "simStatus":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", simStatus ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    nop

    .line 317
    const-string v3, "SimRemoved"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 319
    return-void

    .line 321
    :cond_0
    const-string v3, "SimReady"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    const-string v3, "CmsProfileDisable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$500(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->clearAll()V

    .line 328
    :cond_1
    const-string v3, "CmsProfileEnable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 332
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$500(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->needToHandleSimSwap()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 335
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    .line 339
    :cond_3
    return-void

    .line 312
    .end local v0    # "JsonRoot":Lorg/json/JSONObject;
    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "simStatus":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 314
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "screenName"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUIButtonProceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUIButtonProceed , message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserEnterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onReturnAppFetchingFailedMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 142
    :goto_0
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserLeaveApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 152
    :goto_0
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 71
    :goto_0
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receivedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receivedMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 47
    :goto_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "instance"    # Lcom/sec/ims/ICentralMsgStoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 251
    :goto_0
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 59
    :goto_0
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 230
    :goto_0
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 219
    :goto_0
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 83
    :goto_0
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 107
    :goto_0
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->wipeOutMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;->this$0:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    .line 131
    :goto_0
    return-void
.end method
