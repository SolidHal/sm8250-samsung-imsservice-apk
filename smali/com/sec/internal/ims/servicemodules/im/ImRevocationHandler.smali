.class public Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;
.super Landroid/os/Handler;
.source "ImRevocationHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private final mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRevokingMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p3, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p4, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 45
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 46
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 47
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 49
    return-void
.end method


# virtual methods
.method protected addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method protected handleEventReconnectGuardTimerExpired(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 231
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventReconnectGuardTimerExpired()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 235
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->reconnectGuardTimerExpired()V

    .line 238
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->handleEventReconnectGuardTimerExpired(I)V

    .line 60
    :goto_0
    return-void
.end method

.method protected isReconnectGuardTimersRunning(I)Z
    .locals 1
    .param p1, "phoneID"    # I

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$requestMessageRevocation$0$ImRevocationHandler(Ljava/lang/String;ZILjava/util/List;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "userSelectResult"    # Z
    .param p3, "userSelectType"    # I
    .param p4, "imdnIds"    # Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 90
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 91
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestMessageRevocation(): Session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    const-string v3, "1"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const v3, 0x40000007    # 2.0000017f

    invoke-static {v3, v1, p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 100
    if-eqz p4, :cond_2

    .line 101
    invoke-virtual {v0, p4, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->messageRevocationRequest(Ljava/util/List;ZI)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->messageRevocationRequestAll(ZI)V

    .line 105
    .end local v2    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    goto :goto_2

    .line 106
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestMessageRevocation(): Deregi state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_2
    return-void
.end method

.method protected onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 7
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .param p3, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ")V"
        }
    .end annotation

    .line 112
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageRevocationDone() : Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 116
    .local v2, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 117
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 120
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_5

    .line 123
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 124
    .local v1, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 125
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 126
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 127
    .local v6, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v6, v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 128
    .end local v6    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_2

    :cond_2
    goto :goto_4

    .line 129
    :cond_3
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v4, :cond_4

    .line 130
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 131
    .local v6, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v6, v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 132
    .end local v6    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_3

    .line 134
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_4
    :goto_4
    goto :goto_1

    .line 135
    :cond_5
    nop

    .line 142
    .end local v1    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :goto_5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 143
    .restart local v2    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 144
    .end local v2    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_6

    .line 145
    :cond_6
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/util/Collection;)V

    .line 146
    return-void
.end method

.method protected onMessageRevokeResponseReceived(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 190
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageRevokeResponseReceived(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 193
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSendMessageRevokeRequestDone(): Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageRevokeResponseReceived: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, "phoneId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isCfsTrigger()Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isCfsTrigger()Z

    move-result v3

    const v6, 0x40000017    # 2.0000055f

    if-nez v3, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 204
    return-void

    .line 206
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 210
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 211
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->stopMsgRevokeOperationTimer(Ljava/lang/String;)V

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v4, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    iget-boolean v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    if-eqz v5, :cond_4

    .line 215
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v5, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 217
    :cond_4
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v5, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 220
    .end local v1    # "phoneId":I
    .end local v2    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v4    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_2
    return-void
.end method

.method protected onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    .local p2, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "phoneId":I
    const v1, 0x40000006    # 2.0000014f

    invoke-static {v1, v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->isReconnectGuardTimersRunning(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getChatEventListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 79
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;)V

    .line 80
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 82
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageRevokeTimerExpired: Deregi state or ReconnectGuardTimerRunning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    return-void
.end method

.method protected onSendMessageRevokeRequestDone(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 158
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendMessageRevokeRequestDone(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 161
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 162
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSendMessageRevokeRequestDone(): Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendMessageRevokeRequestDone: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 168
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isCfsTrigger()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    return-void

    .line 172
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    goto :goto_0

    :cond_2
    const-string v3, "0"

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const v3, 0x40000008    # 2.000002f

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 177
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 178
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-boolean v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    if-eqz v4, :cond_3

    .line 179
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 180
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startMsgRevokeOperationTimer(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v5, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 187
    .end local v1    # "phoneId":I
    .end local v2    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v4    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_1
    return-void
.end method

.method protected removeFromRevokingMessages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 154
    return-void
.end method

.method protected requestMessageRevocation(Ljava/lang/String;Ljava/util/List;ZI)V
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "userSelectResult"    # Z
    .param p4, "userSelectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 88
    .local p2, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;Ljava/lang/String;ZILjava/util/List;)V

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method protected setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "b"    # Z
    .param p3, "imsi"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getLegacyLatching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 66
    .local v1, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-interface {v1, p1, p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLegacyLatching: Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bool = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_0
    return-void
.end method

.method protected startReconnectGuardTiemer(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getReconnectGuardTimer()I

    move-result v0

    .line 244
    .local v0, "reconnectGuardTimer":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 245
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsReconnectGuardTimersRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " reconnectGuardTimer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 249
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 249
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 251
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleSendingStateRevokeMessages()V

    .line 253
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto/16 :goto_0

    .line 254
    :cond_1
    return-void
.end method

.method protected stopReconnectGuardTimer(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mIsReconnectGuardTimersRunning:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->mRevokingMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    return-void
.end method
