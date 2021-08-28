.class public Lcom/sec/internal/ims/servicemodules/im/GcmHandler;
.super Ljava/lang/Object;
.source "GcmHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0
    .param p1, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p2, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p3, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .param p4, "imTranslation"    # Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 35
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 36
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 37
    return-void
.end method


# virtual methods
.method protected addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 18
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

    .line 40
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddParticipants: chatId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " participants="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v9

    .line 43
    .local v9, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v9, :cond_1

    .line 44
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 45
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v7, v8, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 46
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v10

    .line 51
    .local v10, "phoneId":I
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 52
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 53
    .restart local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v7, v8, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 54
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 55
    :cond_2
    return-void

    .line 58
    :cond_3
    const v1, 0x4000000c    # 2.0000029f

    invoke-static {v1, v10, v7}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v1

    .line 61
    .local v11, "newParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnUris(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 63
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "addParticipants: requested for only own uri. Invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 66
    .restart local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, v7, v8, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 67
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_2

    .line 68
    :cond_4
    return-void

    .line 71
    :cond_5
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v1, v2, :cond_7

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v9, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addParticipants(Ljava/util/List;)V

    goto :goto_5

    .line 72
    :cond_7
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 73
    .local v12, "insertedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/sec/ims/util/ImsUri;

    .line 74
    .local v14, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v15

    .line 75
    .local v15, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v15, :cond_8

    .line 76
    invoke-virtual {v9, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v16

    .line 77
    .local v16, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-nez v16, :cond_8

    .line 78
    new-instance v17, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    const-string v6, ""

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 80
    .end local v16    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .end local v14    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v15    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_8
    goto :goto_4

    .line 84
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 85
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1, v9, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 87
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1, v7, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 88
    .end local v12    # "insertedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    nop

    .line 91
    :goto_5
    return-void
.end method

.method protected changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeGroupAlias: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 97
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 104
    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->changeGroupAlias(Ljava/lang/String;)V

    .line 109
    .end local v1    # "phoneId":I
    :goto_0
    return-void
.end method

.method protected changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeGroupChatIcon: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " icon_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 115
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 117
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 124
    return-void

    .line 126
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Delete icon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->changeGroupChatIcon(Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "icon file doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 136
    return-void

    .line 138
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->changeGroupChatIcon(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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

    .line 142
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeGroupChatLeader: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 145
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 147
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 148
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 153
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v3, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 154
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 155
    :cond_2
    return-void

    .line 158
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->changeGroupChatLeader(Ljava/util/List;)V

    .line 160
    .end local v1    # "phoneId":I
    :goto_2
    return-void
.end method

.method protected changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeGroupChatSubject: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 167
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 174
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    goto :goto_2

    .line 175
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    move-object v3, p2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->changeGroupChatSubject(Ljava/lang/String;)V

    .line 179
    :goto_2
    return-void
.end method

.method protected removeParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
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

    .line 182
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeParticipants: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 185
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 187
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 188
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_0

    :cond_0
    goto/16 :goto_6

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "phoneId":I
    const v2, 0x4000000d    # 2.000003f

    invoke-static {v2, v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 194
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v3, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 195
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_1

    .line 196
    :cond_2
    return-void

    .line 199
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v2, v3, :cond_7

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "deletedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 202
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 203
    .local v5, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v6

    .line 205
    .local v6, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-eqz v6, :cond_4

    .line 206
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 207
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_4
    goto :goto_2

    .line 211
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 212
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 214
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 215
    .end local v2    # "deletedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    goto :goto_6

    .line 216
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 217
    .local v3, "participant":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v4

    .line 218
    .local v4, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq v5, v6, :cond_8

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq v5, v6, :cond_8

    goto :goto_4

    .line 224
    .end local v3    # "participant":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_8
    goto :goto_3

    .line 219
    .restart local v3    # "participant":Lcom/sec/ims/util/ImsUri;
    .restart local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 220
    .local v5, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-interface {v5, p1, p2, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 221
    .end local v5    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
    goto :goto_5

    .line 222
    :cond_a
    return-void

    .line 225
    .end local v3    # "participant":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_b
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeParticipants(Ljava/util/List;)V

    .line 228
    .end local v1    # "phoneId":I
    :goto_6
    return-void
.end method

.method protected updateParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Set;)V
    .locals 8
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p2, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v0, "addedUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "addedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 236
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 237
    .local v4, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addParticipant(Ljava/util/Collection;)V

    .line 241
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addParticipant(Ljava/util/Collection;)V

    .line 244
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 245
    .local v2, "deletedUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v3, "deletedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 248
    .local v5, "deletedUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v6

    .line 249
    .local v6, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-eqz v6, :cond_2

    .line 250
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 251
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v5    # "deletedUri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_2
    goto :goto_1

    .line 254
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added participants : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", removed participants : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 256
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GcmHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteParticipant(Ljava/util/Collection;)V

    .line 257
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deleteParticipant(Ljava/util/Collection;)V

    .line 260
    .end local v0    # "addedUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v1    # "addedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    .end local v2    # "deletedUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "deletedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :cond_4
    return-void
.end method
