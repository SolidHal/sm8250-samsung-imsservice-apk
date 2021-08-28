.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
.super Lcom/gsma/services/rcs/chat/IGroupChat$Stub;
.source "GroupChatImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

.field private mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field private mSessionLeaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 81
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    .line 69
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 74
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    .line 69
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 74
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 94
    return-void
.end method


# virtual methods
.method public addParticipants(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 345
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : addParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 349
    .local v2, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    if-eqz v2, :cond_0

    .line 350
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

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_0
    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 354
    return-void
.end method

.method public canAddListParticipants(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 323
    .local v0, "phoneId":I
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 324
    return v2

    .line 326
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 327
    .local v1, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/contact/ContactId;

    .line 328
    .local v4, "number":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {v4}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v6, v6

    invoke-interface {v1, v5, v6, v7, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 330
    .local v5, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v5, :cond_2

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 333
    .end local v4    # "number":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 331
    .restart local v4    # "number":Lcom/gsma/services/rcs/contact/ContactId;
    .restart local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :goto_1
    return v2

    .line 334
    .end local v4    # "number":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v5    # "capx":Lcom/sec/ims/options/Capabilities;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public canAddParticipants()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 312
    .local v0, "capx":Lcom/sec/ims/options/Capabilities;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 313
    return v1

    .line 315
    :cond_0
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    if-nez v2, :cond_1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v0, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public canSendMessage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public convertStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 3
    .param p1, "imStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 97
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 98
    .local v0, "status":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 120
    goto :goto_0

    .line 116
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 117
    goto :goto_0

    .line 113
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 114
    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 111
    goto :goto_0

    .line 107
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 108
    goto :goto_0

    .line 103
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 104
    goto :goto_0

    .line 100
    :pswitch_6
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 101
    nop

    .line 125
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

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    return v0
.end method

.method public getMaxParticipants()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getMaxParticipantsCount()I

    move-result v0

    return v0
.end method

.method public getParticipants()Ljava/util/Map;
    .locals 5

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v0, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 171
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->convertStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mReasonCode:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    .line 400
    .local v0, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 403
    .local v2, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    if-ne v3, v4, :cond_0

    .line 404
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 406
    .end local v2    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getState()Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mGroupChatState:Lcom/gsma/services/rcs/chat/GroupChat$State;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAllowedToLeave()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : leave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->closeChat(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSessionLeaved:Z

    .line 380
    return-void
.end method

.method public openChat()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 13
    .param p1, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 267
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 268
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 269
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    move-result-object v1

    .line 272
    .local v1, "glsModule":Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    const/4 v12, 0x0

    .line 273
    .local v12, "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 274
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 275
    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 276
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 274
    move-object v2, v1

    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 277
    .local v2, "imMessageFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/ImMessage;>;"
    if-eqz v2, :cond_0

    .line 278
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-object v12, v3

    .line 281
    :cond_0
    if-eqz v12, :cond_1

    .line 286
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 282
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v4, "Can not get imMessage with messageId "

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "glsModule":Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    .end local p1    # "geoloc":Lcom/gsma/services/rcs/Geoloc;
    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v2    # "imMessageFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/ImMessage;>;"
    .end local v12    # "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .restart local v0    # "location":Landroid/location/Location;
    .restart local v1    # "glsModule":Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;
    .restart local p1    # "geoloc":Lcom/gsma/services/rcs/Geoloc;
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 291
    .end local v2    # "e":Ljava/lang/InterruptedException;
    nop

    .line 293
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public sendIsComposingEvent(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 305
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : sendIsComposingEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    .line 307
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;

    .line 241
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : sendMessage()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 245
    invoke-static {v0, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const-string/jumbo v7, "text/plain"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 244
    move-object/from16 v5, p1

    invoke-interface/range {v3 .. v20}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 249
    .local v0, "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-nez v0, :cond_0

    .line 250
    return-object v2

    .line 252
    :cond_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 255
    .end local v0    # "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 257
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 259
    :goto_0
    return-object v2
.end method

.method public setComposingStatus(Z)V
    .locals 3
    .param p1, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : setComposingStatus() ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GroupChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v0, :cond_0

    .line 415
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    .line 417
    :cond_0
    return-void
.end method
