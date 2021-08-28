.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
.super Lcom/gsma/services/rcs/chat/IChatService$Stub;
.source "ChatServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SUBJECT:Ljava/lang/String; = "chat"

.field private static mChatSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/chat/IOneToOneChat;",
            ">;"
        }
    .end annotation
.end field

.field private static mGroupChatSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/chat/IGroupChat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupChatListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/chat/IGroupChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mLock:Ljava/lang/Object;

.field private mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 159
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;-><init>()V

    .line 103
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 109
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 164
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 165
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    .line 166
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 169
    return-void
.end method

.method public static addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V
    .locals 2
    .param p0, "contact"    # Ljava/lang/String;
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    .line 561
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method protected static addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V
    .locals 2
    .param p0, "session"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    .line 701
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-void
.end method

.method private addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "chatIdString"    # Ljava/lang/String;
    .param p2, "idString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1201
    .local p3, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1202
    .local v0, "setMsgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1203
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 1204
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1207
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1209
    :goto_0
    return-void
.end method

.method private convertParticipantStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 3
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 440
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 441
    .local v0, "pStatus":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 465
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 462
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 463
    goto :goto_0

    .line 459
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 460
    goto :goto_0

    .line 456
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 457
    goto :goto_0

    .line 453
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 454
    goto :goto_0

    .line 450
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 451
    goto :goto_0

    .line 446
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 447
    goto :goto_0

    .line 443
    :pswitch_6
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 444
    nop

    .line 469
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getChatSession(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 2
    .param p0, "contact"    # Ljava/lang/String;

    .line 571
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-object v1
.end method

.method private notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .locals 8
    .param p1, "contactId"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p3, "status"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 429
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 430
    .local v1, "isGroupChat":Z
    :goto_0
    if-nez v1, :cond_1

    .line 431
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupMessageStateChanged(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 437
    :goto_1
    return-void
.end method

.method protected static removeChatSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "contact"    # Ljava/lang/String;

    .line 581
    invoke-static {p0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 583
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_0
    return-void
.end method

.method protected static removeGroupChatSession(Ljava/lang/String;)V
    .locals 1
    .param p0, "chatId"    # Ljava/lang/String;

    .line 710
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method public static translateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 2
    .param p0, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1339
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 1340
    .local v0, "retStatus":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_0

    .line 1341
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1342
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_1

    .line 1343
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1344
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_2

    .line 1345
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1346
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_3

    .line 1347
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0

    .line 1348
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, p0, :cond_4

    .line 1349
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 1351
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/IGroupChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 843
    monitor-exit v0

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 739
    return v0

    .line 742
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 744
    .local v1, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v1, :cond_2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_2
    :goto_0
    return v0
.end method

.method public clearMessageDeliveryExpiration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1591
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public deleteGroupChat(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v0, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 1004
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatDeleted(Ljava/util/List;)V

    .line 1005
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    .line 1006
    return-void
.end method

.method public deleteGroupChats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : delete All GroupChats()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v0, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    .line 943
    .local v1, "sessionList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 944
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 948
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 949
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatDeleted(Ljava/util/List;)V

    .line 950
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    .line 951
    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : deleteMessage() msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1018
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1019
    .local v7, "chatId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1020
    .local v8, "remoteUser":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1021
    .local v1, "cursorDb":Landroid/database/Cursor;
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 1024
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1025
    const-string v2, "chat_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 1026
    const-string v2, "contact"

    .line 1027
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1026
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1028
    .end local v8    # "remoteUser":Ljava/lang/String;
    .local v2, "remoteUser":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1030
    .end local v1    # "cursorDb":Landroid/database/Cursor;
    :cond_1
    const/4 v1, 0x0

    .line 1031
    .local v1, "isGroup":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v3, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 1032
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1033
    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    .line 1035
    :cond_2
    move v4, v1

    .end local v1    # "isGroup":Z
    .local v4, "isGroup":Z
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v5, v1

    .line 1036
    .local v5, "msgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 1040
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 1042
    if-nez v4, :cond_3

    .line 1043
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_1
    new-instance v8, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v8, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {v8}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 1046
    .end local v8    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1048
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v1

    .line 1050
    .local v9, "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1051
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1052
    .local v1, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_4

    .line 1054
    :try_start_3
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v11, v7, v9}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1057
    goto :goto_2

    .line 1055
    :catch_0
    move-exception v11

    .line 1056
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1052
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1059
    .end local v8    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1060
    .end local v1    # "N":I
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1062
    .end local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    .line 1063
    return-void

    .line 1060
    .restart local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1020
    .end local v2    # "remoteUser":Ljava/lang/String;
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v4    # "isGroup":Z
    .end local v5    # "msgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "cursorDb":Landroid/database/Cursor;
    .local v8, "remoteUser":Ljava/lang/String;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v2

    .line 1028
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1022
    :cond_7
    return-void
.end method

.method public deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 17
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : deleteOneToOneChat()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 961
    .local v2, "telUri":Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 962
    .local v3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 963
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v5, ""

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 965
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v4, :cond_0

    .line 966
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "there is no session for ft"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 969
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "chatId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_filetransfer != 1 and chat_id = \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 972
    .local v6, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getMessages(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 973
    .local v7, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v7, :cond_1

    .line 974
    return-void

    .line 976
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v8, "listChats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 979
    .local v9, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 980
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 982
    .local v12, "uriString":Ljava/lang/String;
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 983
    :try_start_0
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 984
    invoke-static {v12}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 985
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Set;

    .line 983
    invoke-virtual {v14, v15, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 986
    monitor-exit v13

    .line 987
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "uriString":Ljava/lang/String;
    const/4 v0, 0x0

    goto :goto_0

    .line 986
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v12    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 988
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v10, 0x0

    invoke-interface {v0, v8, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 989
    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    .line 991
    return-void
.end method

.method public deleteOneToOneChats()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneChats()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v0, "is_filetransfer != 1"

    .line 912
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getMessages(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 913
    .local v2, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v2, :cond_0

    .line 914
    return-void

    .line 916
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v3, "listChats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 919
    .local v4, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 920
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 922
    .local v7, "uriString":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 923
    :try_start_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 924
    invoke-static {v7}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 923
    invoke-virtual {v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 925
    monitor-exit v8

    .line 926
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "uriString":Ljava/lang/String;
    goto :goto_0

    .line 925
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v7    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 927
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v5, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 928
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 929
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyChangeForDelete()V

    .line 930
    return-void
.end method

.method public getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, "message":Lcom/gsma/services/rcs/chat/IChatMessage;
    return-object v0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    .line 868
    .local v0, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V

    return-object v1
.end method

.method public getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 802
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/IGroupChat;

    return-object v0
.end method

.method public getMessages(ZLjava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "isGroup"    # Z
    .param p2, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v0, "_id"

    const-string v1, "chat_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "MESSAGES_COLUMS":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    .line 1173
    .local v3, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1174
    .local v4, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v2, p2, v5, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1175
    .local v6, "cursorDb":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 1179
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1180
    nop

    .line 1181
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1180
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1182
    .local v5, "chatIdString":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v7

    .line 1183
    .local v7, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v7, :cond_1

    .line 1184
    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-eq v8, p1, :cond_2

    .line 1187
    goto :goto_0

    .line 1189
    :cond_2
    nop

    .line 1190
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1189
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1191
    .local v8, "idString":Ljava/lang/String;
    invoke-direct {p0, v5, v8, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v5    # "chatIdString":Ljava/lang/String;
    .end local v7    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v8    # "idString":Ljava/lang/String;
    goto :goto_0

    .line 1193
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1194
    .end local v6    # "cursorDb":Landroid/database/Cursor;
    :cond_4
    return-object v4

    .line 1176
    .restart local v6    # "cursorDb":Landroid/database/Cursor;
    :cond_5
    :goto_1
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteOneToOneFileTransfers: Message not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    nop

    .line 1193
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1177
    :cond_6
    return-object v5

    .line 1174
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
.end method

.method public getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 11
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 484
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : openSingleChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 489
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    .line 490
    .local v2, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getChatSession(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    .line 492
    .local v3, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    if-nez v3, :cond_4

    .line 493
    const/4 v4, 0x0

    .line 494
    .local v4, "findNum":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v5

    .line 495
    .local v5, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 496
    .local v7, "se":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-nez v8, :cond_2

    .line 497
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v8

    .line 498
    .local v8, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 502
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 503
    move-object v1, v7

    .line 504
    goto :goto_1

    .line 507
    .end local v7    # "se":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v8    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 508
    .end local v4    # "findNum":Ljava/lang/String;
    .end local v5    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 510
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->getCoreSession()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 511
    .local v4, "coreSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v4, :cond_6

    .line 512
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Core chat session already exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 514
    return-object v3

    .line 516
    :cond_5
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    goto :goto_2

    .line 519
    :cond_6
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->removeChatSession(Ljava/lang/String;)V

    .line 523
    .end local v4    # "coreSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_2
    if-nez v1, :cond_7

    .line 524
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create a new chat session with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v4, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 529
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v7, "chat"

    const-string/jumbo v8, "text/plain"

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v6, v4

    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 530
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v5

    .line 535
    :goto_3
    goto :goto_4

    .line 533
    :catch_0
    move-exception v5

    .line 534
    .local v5, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_4

    .line 531
    .end local v5    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v5

    .line 532
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 538
    .end local v4    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 543
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v4, v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    move-object v3, v4

    .line 545
    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V

    .line 546
    return-object v3

    .line 539
    :cond_8
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getOneToOneChat: session is error..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string/jumbo v5, "session is error..."

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .end local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 549
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local v3    # "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .restart local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :catch_2
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1377
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 1378
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1379
    .local v1, "imSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v1, :cond_0

    .line 1380
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v2

    .line 1381
    .local v2, "participantsString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1382
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 1385
    .end local v2    # "participantsString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v2, ""

    return-object v2
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 1397
    const/4 v0, 0x2

    return v0
.end method

.method public getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .locals 10
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : getUndeliveredMessages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1120
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1121
    .local v1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1122
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v4, ""

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 1124
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v3, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1126
    return-object v3

    .line 1128
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v4

    .line 1129
    .local v4, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    const-string v5, "_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1132
    .local v5, "projection":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chat_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "notification_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1134
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "direction"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1135
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "is_filetransfer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1136
    .local v6, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1137
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1138
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1139
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1136
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v8

    .line 1142
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1143
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v3
.end method

.method public handleReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 10
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "isBlock"    # Z

    .line 1216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1217
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_2

    .line 1218
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    .line 1220
    .local v1, "isGroup":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1221
    if-eqz v1, :cond_0

    .line 1222
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1236
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1224
    :cond_0
    if-eqz p2, :cond_1

    .line 1225
    monitor-exit v2

    return-void

    .line 1228
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "uriString":Ljava/lang/String;
    new-instance v5, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v5, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1231
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1230
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1233
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1234
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 1233
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .end local v3    # "uriString":Ljava/lang/String;
    .end local v5    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1238
    .end local v1    # "isGroup":Z
    :cond_2
    :goto_2
    return-void
.end method

.method public initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .locals 7
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/IGroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 762
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : initiateGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 766
    .local v2, "id":Lcom/gsma/services/rcs/contact/ContactId;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v2    # "id":Lcom/gsma/services/rcs/contact/ContactId;
    goto :goto_0

    .line 770
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 771
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 773
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v1, :cond_1

    .line 778
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;-><init>(Ljava/lang/String;)V

    .line 780
    .local v2, "groupChat":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V

    .line 781
    return-object v2

    .line 774
    .end local v2    # "groupChat":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initiateGroupChat: session is error..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string/jumbo v3, "session is error..."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .end local p1    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .end local p2    # "subject":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .restart local p1    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .restart local p2    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 783
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 787
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 789
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAllowedToInitiateGroupChat()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 723
    .local v0, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 724
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isServiceRegistered()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 191
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    return v1

    .line 195
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 196
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 197
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v6, "im"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    const/4 v1, 0x1

    return v1

    .line 196
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_2
    return v1
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 879
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : markMessageAsRead()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 881
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-nez v0, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 888
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 889
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 891
    .local v3, "phoneNum":Ljava/lang/String;
    new-instance v4, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v4, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 892
    .local v4, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 893
    :try_start_0
    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, v4, v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 894
    monitor-exit v5

    .line 895
    return-void

    .line 894
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public markUndeliveredMessagesAsProcessed(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    .local p1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : markUndeliveredMessagesAsProcessed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 1154
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1155
    .local v2, "msgId":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    .line 1156
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-nez v3, :cond_0

    .line 1157
    goto :goto_0

    .line 1159
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 1161
    .end local v2    # "msgId":Ljava/lang/String;
    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    goto :goto_0

    .line 1162
    :cond_1
    return-void
.end method

.method public notifyChangeForDelete()V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 902
    return-void
.end method

.method public notifyGroupChatDeleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p1, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupChatDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 418
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v3, p1}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onDeleted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    goto :goto_1

    .line 419
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 416
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 424
    .end local v1    # "N":I
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/gsma/services/rcs/chat/GroupChat$State;
    .param p3, "reasonCode"    # Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 263
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGroupChateStateChanged  chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    if-nez p3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->name()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    .line 269
    .local v1, "groupImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    if-nez v1, :cond_1

    .line 270
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit v0

    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 277
    if-eqz p3, :cond_2

    .line 278
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 279
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->ordinal()I

    move-result v5

    .line 280
    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ordinal()I

    move-result v6

    .line 278
    invoke-interface {v4, p1, v5, v6}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onStateChanged(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 282
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 284
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    nop

    .line 275
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 287
    .end local v1    # "groupImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    .end local v2    # "N":I
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyGroupMessageStateChanged(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .locals 11
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "status"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .param p3, "reasonCode"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 295
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupMessageStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "msgId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "chatId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "contentType":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    move-object v8, v2

    .line 302
    .local v8, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    monitor-exit v0

    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v2

    .line 307
    .local v9, "N":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_1

    .line 309
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 310
    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v6

    invoke-virtual {p3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->ordinal()I

    move-result v7

    .line 309
    move-object v3, v1

    invoke-interface/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    goto :goto_1

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 307
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 315
    .end local v10    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 316
    .end local v1    # "chatId":Ljava/lang/String;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "msgId":Ljava/lang/String;
    .end local v8    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v9    # "N":I
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 8
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 386
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyGroupParticipantInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    .line 389
    .local v1, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 390
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 391
    .local v2, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->convertParticipantStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v3

    .line 392
    .local v3, "participantStatus":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 395
    :try_start_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 396
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-interface {v6, v7, v2, v3}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    goto :goto_1

    .line 398
    :catch_0
    move-exception v6

    .line 399
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 393
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 402
    .end local v5    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 403
    .end local v1    # "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .end local v2    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "participantStatus":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .end local v4    # "N":I
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .locals 15
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 351
    move-object v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "notifyGroupDeliveryInfoChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 354
    .local v10, "chatId":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    move-object v11, v0

    .line 355
    .local v11, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v11, :cond_0

    .line 356
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "notifyMessageGroupDeliveryInfoChanged: Session is null, drop out"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v2

    return-void

    .line 360
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "msgId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "contentType":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 363
    monitor-exit v2

    return-void

    .line 366
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 367
    .local v12, "contact":Ljava/lang/String;
    new-instance v5, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v5, v12}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 368
    .local v5, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v0

    .line 369
    .local v13, "N":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_2

    .line 371
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->ordinal()I

    move-result v9

    .line 371
    move-object v4, v10

    invoke-interface/range {v3 .. v9}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 378
    .end local v14    # "i":I
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 379
    .end local v5    # "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "msgId":Ljava/lang/String;
    .end local v10    # "chatId":Ljava/lang/String;
    .end local v11    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v12    # "contact":Ljava/lang/String;
    .end local v13    # "N":I
    monitor-exit v2

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 245
    if-eqz p1, :cond_0

    .line 246
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :goto_1
    goto :goto_2

    .line 250
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 255
    .end local v1    # "N":I
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1436
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1430
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1489
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 1484
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1515
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 1510
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1479
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1473
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1500
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 1494
    return-void
.end method

.method public onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 616
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    .line 617
    .local v0, "groupChatState":Lcom/gsma/services/rcs/chat/GroupChat$State;
    if-nez v0, :cond_0

    .line 618
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v1

    .line 621
    .local v1, "reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    .line 622
    return-void
.end method

.method public onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "sessionUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p4, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 656
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : onChatInvitationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 661
    .local v0, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addGroupChatSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;)V

    .line 663
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chatId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    .end local v0    # "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 670
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "session.getParticipantsString().size() != 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mChatSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 677
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v1, v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 678
    .local v1, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->addChatSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;)V

    .line 680
    .end local v1    # "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    :cond_2
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 627
    return-void
.end method

.method public onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 600
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    .line 601
    .local v0, "groupChatState":Lcom/gsma/services/rcs/chat/GroupChat$State;
    if-nez v0, :cond_0

    .line 602
    return-void

    .line 604
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v1

    .line 605
    .local v1, "reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupChatStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    .line 607
    return-void
.end method

.method public onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z
    .param p3, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "userAlias"    # Ljava/lang/String;
    .param p5, "isTyping"    # Z
    .param p6, "interval"    # I

    .line 1403
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onComposingNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    const/4 v1, 0x0

    .line 1406
    .local v1, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    if-eqz p3, :cond_0

    .line 1407
    :try_start_0
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 1424
    .end local v1    # "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1410
    .restart local v1    # "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 1411
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1414
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v4, p1, v1, p5}, Lcom/gsma/services/rcs/chat/IGroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    goto :goto_2

    .line 1416
    :catch_0
    move-exception v4

    .line 1417
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1412
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1420
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1421
    .end local v2    # "N":I
    goto :goto_3

    .line 1422
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {v2, v1, p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 1424
    .end local v1    # "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_3
    monitor-exit v0

    .line 1425
    return-void

    .line 1424
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "threadId"    # I
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 595
    return-void
.end method

.method public onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 590
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;

    .line 637
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 632
    return-void
.end method

.method public onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "leaderParticipant"    # Ljava/lang/String;

    .line 1601
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 1560
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, "uriString":Ljava/lang/String;
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v2, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onImdnNotificationReceived()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, p3, :cond_1

    .line 1564
    if-nez p4, :cond_0

    .line 1565
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1566
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1565
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    .line 1570
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {p0, v1, p2, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    goto :goto_0

    .line 1574
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, p3, :cond_3

    .line 1575
    if-nez p4, :cond_2

    .line 1576
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1577
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v8, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1576
    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    .line 1581
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {p0, v1, p2, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageGroupDeliveryInfoChanged(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/ims/util/ImsUri;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 1586
    :cond_3
    :goto_0
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 7
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1519
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1526
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "uriString":Ljava/lang/String;
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v2, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    .line 1529
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v6, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 1528
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1531
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1532
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 1531
    invoke-virtual {v1, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->broadcastMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v2    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_0
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1596
    .local p2, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1505
    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # I
    .param p3, "reasoncode"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 1555
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 647
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "reason"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 1546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->FAILED_SEND:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1550
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1538
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->getRemoteUserByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyMessageStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 1542
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 642
    return-void
.end method

.method public onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1451
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1452
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1453
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1454
    :cond_0
    return-void
.end method

.method public onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1458
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1459
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1460
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1461
    :cond_0
    return-void
.end method

.method public onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1465
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1466
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyGroupParticipantInfoChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1467
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1468
    :cond_0
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1447
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1441
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public receiveGroupChatMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 688
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : receiveGroupChatMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mimeType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 693
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/IGroupChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mGroupChatListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 857
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->mOneToOneChatEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneChatEventBroadcaster;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 830
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRespondToDisplayReports(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : setRespondToDisplayReports() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    .line 1088
    .local v0, "rcsSetting":Lcom/sec/internal/ims/util/RcsSettingsUtils;
    if-eqz v0, :cond_0

    .line 1089
    const-string v1, "ChatRespondToDisplayReports"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 1091
    :cond_0
    return-void
.end method

.method public translateReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .locals 3
    .param p1, "closedReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 1323
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 1324
    .local v0, "reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1332
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    goto :goto_0

    .line 1329
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 1330
    goto :goto_0

    .line 1326
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 1327
    nop

    .line 1335
    :goto_0
    return-object v0
.end method

.method public translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "closedReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 1293
    const/4 v0, 0x0

    .line 1294
    .local v0, "groupChatState":Lcom/gsma/services/rcs/chat/GroupChat$State;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1317
    const/4 v0, 0x0

    goto :goto_0

    .line 1312
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq p3, v1, :cond_5

    .line 1313
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->ABORTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1308
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 1309
    goto :goto_0

    .line 1303
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v1, :cond_5

    .line 1304
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->ACCEPTING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1296
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v1, :cond_4

    .line 1297
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_0

    .line 1298
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v1, :cond_5

    .line 1299
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 1319
    :cond_5
    :goto_0
    return-object v0
.end method
