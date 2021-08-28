.class public Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;
.super Ljava/lang/Object;
.source "ThirdPartyTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create ThirdPartyTranslation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 33
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 42
    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 148
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 119
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 52
    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 47
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 57
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 114
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 199
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyRCSMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.RCS_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "rcsMsgIntent":Landroid/content/Intent;
    const-string v1, "com.gsma.services.rcs.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v4, "from"

    if-ne v2, v3, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    const-string v3, "direction"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v3, :cond_1

    .line 177
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.gsma.services.rcs.action.RECEIVE_RCS_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "rcsIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 183
    .end local v0    # "rcsMsgIntent":Landroid/content/Intent;
    .end local v2    # "rcsIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyRCSMessages()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 129
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onMessageSendResponse: no participants for this chat"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.gsma.services.rcs.action.RCS_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "rcsIntent":Landroid/content/Intent;
    const-string v3, "com.gsma.services.rcs.category.ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v3, "recipients"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 140
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    const-string v4, "direction"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 143
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v1    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "rcsIntent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # I
    .param p3, "reasonCode"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 158
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 153
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 194
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 188
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 109
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyRCSMessages()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 77
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onTransferCompleted: no participants for this chat"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.gsma.services.rcs.action.RCS_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "rcsMsgIntent":Landroid/content/Intent;
    const-string v3, "com.gsma.services.rcs.category.ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v6, ""

    const-string v7, "from"

    if-ne v4, v5, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 90
    :cond_3
    const-string/jumbo v4, "recipients"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    :goto_1
    nop

    .line 93
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    .line 92
    const-string v5, "direction"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v4, v5, :cond_5

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.gsma.services.rcs.action.RECEIVE_RCS_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "rcsIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 104
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v1    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "rcsMsgIntent":Landroid/content/Intent;
    .end local v4    # "rcsIntent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 62
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 67
    return-void
.end method
