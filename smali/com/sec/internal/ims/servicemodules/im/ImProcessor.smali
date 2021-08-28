.class public Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
.super Landroid/os/Handler;
.source "ImProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p3, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    invoke-static {}, Lcom/sec/internal/helper/CollectionUtils;->createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 72
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 73
    return-void
.end method

.method private isDuplicateMessage(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 695
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 696
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_1

    .line 697
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDeliveredNotificationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDeliveredNotification: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 703
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 705
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateMessageSenderAlias(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 710
    .local v0, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 716
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v1

    .line 717
    .local v1, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-nez v1, :cond_1

    .line 718
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Participant is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 722
    .end local v1    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :goto_0
    goto :goto_1

    .line 724
    :cond_2
    const-string v1, ""

    iput-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 727
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 728
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 730
    :cond_4
    return-void
.end method


# virtual methods
.method protected deleteAllMessages(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 456
    .local p1, "listChatId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$vBY6IjXXr_OHros_ERFRJyHCt38;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$vBY6IjXXr_OHros_ERFRJyHCt38;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method protected deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 415
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 426
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-object v0
.end method

.method protected deleteMessagesByImdnId(Ljava/util/Map;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 439
    .local p1, "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 445
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-object v0
.end method

.method protected getLastSentMessagesStatus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method protected getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0
    .param p1, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .param p2, "imTranslation"    # Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 77
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 78
    return-void
.end method

.method public synthetic lambda$deleteAllMessages$5$ImProcessor(Ljava/util/List;Z)V
    .locals 3
    .param p1, "listChatId"    # Ljava/util/List;
    .param p2, "isLocalWipeout"    # Z

    .line 457
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllMessages: list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    .local v1, "idStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    .line 460
    .end local v1    # "idStr":Ljava/lang/String;
    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V

    .line 462
    return-void
.end method

.method public synthetic lambda$deleteMessages$3$ImProcessor(Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 4
    .param p1, "list"    # Ljava/util/List;
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage: list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " localWipeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    .local v1, "idStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 420
    .local v2, "id":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 422
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_0
    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V

    .line 424
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$deleteMessagesByImdnId$4$ImProcessor(Ljava/util/Map;Z)Ljava/lang/Boolean;
    .locals 3
    .param p1, "imdnIds"    # Ljava/util/Map;
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage: imdnIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " localWipeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessages(Ljava/util/Map;)V

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;Z)V

    .line 443
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getLastSentMessagesStatus$6$ImProcessor(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 494
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastSentMessagesStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " messages(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyLastSentMessagesStatus(Ljava/util/List;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyLastSentMessagesStatus(Ljava/util/List;)V

    .line 500
    :goto_0
    return-void
.end method

.method public synthetic lambda$onProcessPendingMessages$7$ImProcessor(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "l"    # Ljava/util/List;

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingNotifications(Ljava/util/List;)V

    .line 681
    :cond_0
    return-void
.end method

.method public synthetic lambda$reportMessages$2$ImProcessor(Ljava/util/ArrayList;)V
    .locals 43
    .param p1, "list"    # Ljava/util/ArrayList;

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 346
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportMessages: list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "onekey_report_psi"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 348
    .local v1, "reportPSI":Lcom/sec/ims/util/ImsUri;
    if-nez v1, :cond_0

    .line 349
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "reportMessages: reportPSI is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 353
    .local v2, "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    .line 356
    .local v17, "idStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 357
    .local v15, "id":I
    const-string v4, ""

    .line 358
    .local v4, "imsi":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5, v15}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v14

    .line 359
    .local v14, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-nez v14, :cond_1

    .line 360
    goto/16 :goto_4

    .line 362
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v18, v5

    .line 363
    .local v18, "spamTime":Ljava/util/Date;
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v13

    .line 364
    .local v13, "spamFrom":Lcom/sec/ims/util/ImsUri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 365
    .local v5, "spamTo":Lcom/sec/ims/util/ImsUri;
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v19

    .line 366
    .local v19, "chatSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 367
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 369
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    move-object v12, v4

    move-object v11, v5

    goto :goto_1

    .line 372
    :cond_2
    move-object v12, v4

    move-object v11, v5

    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v11, "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v12, "imsi":Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_6

    if-nez v11, :cond_3

    .line 373
    goto/16 :goto_4

    .line 376
    :cond_3
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v4, v2, v5, v12}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v20

    .line 377
    .local v20, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v20, :cond_4

    .line 378
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    const-string v23, "0"

    move-object v5, v12

    move-object v6, v2

    move-object/from16 v24, v11

    .end local v11    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v24, "spamTo":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v11, v23

    move-object/from16 v23, v12

    .end local v12    # "imsi":Ljava/lang/String;
    .local v23, "imsi":Ljava/lang/String;
    move-object/from16 v12, v21

    move-object/from16 v21, v2

    move-object v2, v13

    .end local v13    # "spamFrom":Lcom/sec/ims/util/ImsUri;
    .local v2, "spamFrom":Lcom/sec/ims/util/ImsUri;
    .local v21, "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v13, v22

    invoke-virtual/range {v4 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v20

    move-object/from16 v13, v20

    goto :goto_2

    .line 377
    .end local v21    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v23    # "imsi":Ljava/lang/String;
    .end local v24    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v2, "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v11    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .restart local v12    # "imsi":Ljava/lang/String;
    .restart local v13    # "spamFrom":Lcom/sec/ims/util/ImsUri;
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    move-object v2, v13

    .end local v11    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "spamFrom":Lcom/sec/ims/util/ImsUri;
    .local v2, "spamFrom":Lcom/sec/ims/util/ImsUri;
    .restart local v21    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v23    # "imsi":Ljava/lang/String;
    .restart local v24    # "spamTo":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v13, v20

    .line 382
    .end local v20    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v13, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_2
    instance-of v4, v14, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    const-string v5, "display_delivery"

    if-eqz v4, :cond_5

    .line 384
    move-object v4, v14

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 385
    .local v4, "imMsg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getBody()Ljava/lang/String;

    move-result-object v28

    .line 386
    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v29

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getContentType()Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 387
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v40

    .line 385
    const-string v31, "0"

    move-object/from16 v25, v6

    move-object/from16 v27, v13

    invoke-virtual/range {v25 .. v40}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v5

    .line 388
    .local v5, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v24

    .end local v24    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v12, "spamTo":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v5, v2, v12, v6, v15}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;I)V

    .line 389
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v13, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 390
    invoke-virtual {v13, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 391
    .end local v4    # "imMsg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local v5    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    move-object/from16 v24, v1

    move-object v6, v12

    move-object v5, v13

    move-object/from16 v22, v14

    move v1, v15

    goto :goto_3

    .line 392
    .end local v12    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .restart local v24    # "spamTo":Lcom/sec/ims/util/ImsUri;
    :cond_5
    move-object/from16 v12, v24

    .end local v24    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .restart local v12    # "spamTo":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v20, v14

    check-cast v20, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 393
    .local v20, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 393
    const-string v10, "1"

    move-object v5, v6

    move-object v6, v13

    move-object v8, v1

    move-object/from16 v41, v12

    .end local v12    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v41, "spamTo":Lcom/sec/ims/util/ImsUri;
    move/from16 v12, v22

    move-object/from16 v42, v13

    .end local v13    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v42, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move/from16 v13, v24

    move-object/from16 v22, v14

    .end local v14    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .local v22, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    move/from16 v14, v25

    move-object/from16 v24, v1

    move v1, v15

    .end local v15    # "id":I
    .local v1, "id":I
    .local v24, "reportPSI":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v15, v26

    invoke-virtual/range {v4 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v4

    .line 395
    .local v4, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v41

    .end local v41    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v6, "spamTo":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v4, v2, v6, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;I)V

    .line 396
    move-object/from16 v5, v42

    .end local v42    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 398
    .end local v4    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v20    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :goto_3
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 399
    .end local v1    # "id":I
    .end local v2    # "spamFrom":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v6    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .end local v17    # "idStr":Ljava/lang/String;
    .end local v18    # "spamTime":Ljava/util/Date;
    .end local v19    # "chatSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v22    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v23    # "imsi":Ljava/lang/String;
    move-object/from16 v2, v21

    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 372
    .end local v21    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v24    # "reportPSI":Lcom/sec/ims/util/ImsUri;
    .local v1, "reportPSI":Lcom/sec/ims/util/ImsUri;
    .local v2, "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v11    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .local v12, "imsi":Ljava/lang/String;
    .local v13, "spamFrom":Lcom/sec/ims/util/ImsUri;
    .restart local v14    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .restart local v15    # "id":I
    .restart local v17    # "idStr":Ljava/lang/String;
    .restart local v18    # "spamTime":Ljava/util/Date;
    .restart local v19    # "chatSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_6
    move-object/from16 v24, v1

    move-object/from16 v21, v2

    move-object v6, v11

    move-object/from16 v23, v12

    move-object v2, v13

    move-object/from16 v22, v14

    move v1, v15

    .end local v11    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "spamFrom":Lcom/sec/ims/util/ImsUri;
    .end local v14    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v15    # "id":I
    .local v1, "id":I
    .local v2, "spamFrom":Lcom/sec/ims/util/ImsUri;
    .restart local v6    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .restart local v21    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v22    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .restart local v23    # "imsi":Ljava/lang/String;
    .restart local v24    # "reportPSI":Lcom/sec/ims/util/ImsUri;
    goto :goto_4

    .line 355
    .end local v6    # "spamTo":Lcom/sec/ims/util/ImsUri;
    .end local v17    # "idStr":Ljava/lang/String;
    .end local v18    # "spamTime":Ljava/util/Date;
    .end local v19    # "chatSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v21    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v22    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v23    # "imsi":Ljava/lang/String;
    .end local v24    # "reportPSI":Lcom/sec/ims/util/ImsUri;
    .local v1, "reportPSI":Lcom/sec/ims/util/ImsUri;
    .local v2, "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_7
    move-object/from16 v24, v1

    move-object/from16 v21, v2

    .line 400
    .end local v1    # "reportPSI":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "normalizedReportPSI":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :goto_4
    goto :goto_5

    .line 401
    :cond_8
    move-object/from16 v3, p1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportMessages: not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_5
    return-void
.end method

.method public synthetic lambda$resendMessage$1$ImProcessor(I)V
    .locals 4
    .param p1, "msgId"    # I

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 318
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-nez v0, :cond_0

    .line 319
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resendMessage: message not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 324
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_2

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 326
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 327
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 328
    :cond_1
    return-void

    .line 331
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v2, v3, :cond_3

    .line 332
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 334
    :cond_3
    return-void
.end method

.method public synthetic lambda$sendMessage$0$ImProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 26
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "disposition"    # Ljava/util/Set;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "isBroadcastMsg"    # Z
    .param p7, "isprotectedAccountMsg"    # Z
    .param p8, "isGLSMsg"    # Z
    .param p9, "deviceName"    # Ljava/lang/String;
    .param p10, "reliableMessage"    # Ljava/lang/String;
    .param p11, "xmsMessage"    # Ljava/lang/String;
    .param p12, "maapTrafficType"    # Ljava/lang/String;
    .param p13, "referenceMessageId"    # Ljava/lang/String;
    .param p14, "referenceMessageType"    # Ljava/lang/String;
    .param p15, "messageNumber"    # I
    .param p16, "isTemporary"    # Z
    .param p17, "ccList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p5

    move/from16 v14, p6

    move/from16 v13, p15

    move-object/from16 v12, p17

    const/16 v21, 0x0

    .line 224
    .local v21, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    const/4 v3, 0x0

    .line 226
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    const/16 v22, 0x0

    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage: chatId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", body="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", disposition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requestMessageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBroadcastMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isprotectedAccountMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGLSMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", deviceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", reliableMessage="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p10

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", xmsMessage="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    move-object/from16 v18, v3

    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v18, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_start_1
    const-string v3, ", maapTrafficType="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p12

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", referenceMessageId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p13

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", referenceMessageType="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p14

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-object v4, v0

    .line 238
    .end local v18    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v4, :cond_1

    .line 239
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage: Session not found in the cache."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    const/4 v10, 0x4

    :try_start_3
    invoke-interface {v3, v2, v13, v10, v15}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    move-object/from16 v10, p11

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    move-object v3, v4

    move v7, v10

    move-object v6, v12

    move-object v5, v15

    move-object v4, v0

    move-object/from16 v0, v21

    goto/16 :goto_8

    .line 243
    :cond_0
    return-object v22

    .line 287
    :catch_1
    move-exception v0

    move-object v3, v4

    move-object v6, v12

    move-object v5, v15

    const/4 v7, 0x4

    move-object v4, v0

    move-object/from16 v0, v21

    goto/16 :goto_8

    .line 246
    :cond_1
    const/4 v10, 0x4

    :try_start_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 249
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :try_start_5
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v10, :cond_4

    :try_start_6
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move-object/from16 v18, v3

    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v18, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string/jumbo v3, "slm"

    .line 250
    invoke-virtual {v10, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 251
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v14, :cond_5

    :cond_2
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 252
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v3

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v3, v10, :cond_5

    .line 253
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v14, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-ne v3, v10, :cond_5

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 249
    .end local v18    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_4
    move-object/from16 v18, v3

    .line 253
    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v18    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_5
    const/4 v3, 0x0

    :goto_1
    move/from16 v23, v3

    .line 255
    .local v23, "isSlm":Z
    :try_start_7
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    move-object/from16 v24, v18

    .end local v18    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v24, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move-object/from16 v25, v4

    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v25, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object v4, v10

    move-object/from16 v5, v25

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const/4 v2, 0x4

    move/from16 v10, v23

    move/from16 v11, p7

    move/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move/from16 v17, p16

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    :try_start_8
    invoke-virtual/range {v3 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 260
    .end local v21    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :try_start_9
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    if-eqz v5, :cond_6

    :try_start_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 261
    .local v5, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 262
    .end local v5    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_2

    .line 287
    .end local v0    # "phoneId":I
    .end local v23    # "isSlm":Z
    .end local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :catch_2
    move-exception v0

    move-object/from16 v5, p5

    :goto_3
    move-object/from16 v6, p17

    move-object v4, v0

    move v7, v2

    move-object v0, v3

    move-object/from16 v3, v25

    move-object/from16 v2, p1

    goto/16 :goto_8

    .line 264
    .restart local v0    # "phoneId":I
    .restart local v23    # "isSlm":Z
    .restart local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_6
    :try_start_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v4, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 267
    move-object/from16 v5, p5

    :try_start_c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 269
    if-eqz v23, :cond_7

    :try_start_d
    const-string v6, "1"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    .line 287
    .end local v0    # "phoneId":I
    .end local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "isSlm":Z
    .end local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :catch_3
    move-exception v0

    goto :goto_3

    .line 269
    .restart local v0    # "phoneId":I
    .restart local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "isSlm":Z
    .restart local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_7
    :try_start_e
    const-string v6, " 0"

    :goto_4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 270
    const v6, 0x40000001    # 2.0000002f

    move v7, v2

    move-object/from16 v2, p1

    :try_start_f
    invoke-static {v6, v0, v2, v4}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 272
    invoke-virtual/range {v25 .. v25}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-ne v6, v8, :cond_8

    :try_start_10
    const-string v6, "allow_only_opengroupchat"

    .line 273
    move-object/from16 v8, v24

    .end local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v8, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-interface {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 274
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Only OpenGroupChat is allowed, fallback to legacy(MMS)"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v3, v6, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 277
    return-object v3

    .line 287
    .end local v0    # "phoneId":I
    .end local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v23    # "isSlm":Z
    :catch_4
    move-exception v0

    move-object/from16 v6, p17

    :goto_5
    move-object v4, v0

    move-object v0, v3

    move-object/from16 v3, v25

    goto/16 :goto_8

    .line 272
    .restart local v0    # "phoneId":I
    .restart local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "isSlm":Z
    .restart local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_8
    move-object/from16 v8, v24

    .line 280
    .end local v24    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v8    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_9
    :try_start_11
    invoke-virtual/range {v25 .. v25}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    if-eqz v6, :cond_a

    move-object/from16 v6, p17

    if-eqz v6, :cond_b

    :try_start_12
    invoke-interface/range {p17 .. p17}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 281
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    .line 282
    .local v9, "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setGroupCcListUri(Ljava/util/Collection;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_6

    .line 287
    .end local v0    # "phoneId":I
    .end local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v9    # "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v23    # "isSlm":Z
    :catch_5
    move-exception v0

    goto :goto_5

    .line 280
    .restart local v0    # "phoneId":I
    .restart local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v23    # "isSlm":Z
    :cond_a
    move-object/from16 v6, p17

    .line 284
    :cond_b
    :goto_6
    move-object/from16 v9, v25

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v9, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_start_13
    invoke-virtual {v1, v9, v3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 286
    return-object v3

    .line 287
    .end local v0    # "phoneId":I
    .end local v4    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v23    # "isSlm":Z
    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, v3

    move-object v3, v9

    goto/16 :goto_8

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_7
    move-exception v0

    move-object/from16 v6, p17

    move-object/from16 v9, v25

    move-object v4, v0

    move-object v0, v3

    move-object v3, v9

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto/16 :goto_8

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_8
    move-exception v0

    move-object/from16 v6, p17

    move v7, v2

    move-object/from16 v9, v25

    move-object/from16 v2, p1

    move-object v4, v0

    move-object v0, v3

    move-object v3, v9

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto/16 :goto_8

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_9
    move-exception v0

    move-object/from16 v5, p5

    move-object/from16 v6, p17

    move v7, v2

    move-object/from16 v9, v25

    move-object/from16 v2, p1

    move-object v4, v0

    move-object v0, v3

    move-object v3, v9

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_8

    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v21    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .restart local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_a
    move-exception v0

    move-object/from16 v5, p5

    move-object/from16 v6, p17

    move v7, v2

    move-object/from16 v9, v25

    move-object/from16 v2, p1

    move-object v4, v0

    move-object v3, v9

    move-object/from16 v0, v21

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_8

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_b
    move-exception v0

    move-object v9, v4

    move-object v6, v12

    move-object v5, v15

    const/4 v7, 0x4

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v9, v4

    move v7, v10

    move-object v6, v12

    move-object v5, v15

    :goto_7
    move-object v4, v0

    move-object v3, v9

    move-object/from16 v0, v21

    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_8

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v18, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_d
    move-exception v0

    move-object v6, v12

    move-object v5, v15

    const/4 v7, 0x4

    move-object v4, v0

    move-object/from16 v3, v18

    move-object/from16 v0, v21

    goto :goto_8

    .end local v18    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catch_e
    move-exception v0

    move-object/from16 v18, v3

    move-object v6, v12

    move-object v5, v15

    const/4 v7, 0x4

    move-object v4, v0

    move-object/from16 v0, v21

    .line 288
    .end local v21    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .local v4, "e":Ljava/lang/Exception;
    :goto_8
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendMessage Exception e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez v0, :cond_e

    .line 290
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_d

    .line 291
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 292
    .local v9, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    move/from16 v10, p15

    invoke-interface {v9, v2, v10, v7, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V

    .line 293
    .end local v9    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_9

    :cond_c
    move/from16 v10, p15

    goto :goto_a

    .line 290
    :cond_d
    move/from16 v10, p15

    .line 303
    :goto_a
    return-object v22

    .line 296
    :cond_e
    move/from16 v10, p15

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "sendMessage Failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-nez v7, :cond_f

    .line 298
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 301
    :cond_f
    return-object v0
.end method

.method protected onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 509
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 511
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 512
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "session not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncomingMessageReceived: conversationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imdnId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->isDuplicateMessage(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    return-void

    .line 524
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onIncomingMessageReceived, user reject GC text."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 530
    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->updateMessageSenderAlias(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 532
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_4

    .line 533
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-static {v2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->removeUriParameters(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 542
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 543
    .local v2, "suggestion":Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->isMultipart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 544
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v3, "multipart":Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 546
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onIncomingMessageReceived: message includes suggestion"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBody()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 548
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 549
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    .line 553
    .end local v3    # "multipart":Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
    :cond_5
    move-object v12, v2

    .end local v2    # "suggestion":Ljava/lang/String;
    .local v12, "suggestion":Ljava/lang/String;
    :goto_1
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    const-string v3, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 555
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v6

    .line 554
    move-object v4, v0

    move-object v5, p1

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v2

    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto/16 :goto_2

    .line 557
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_6
    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v2, :cond_7

    .line 558
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 559
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    .line 558
    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 560
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v2, v3, :cond_7

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_7

    .line 561
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 565
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v10, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v6

    move-object v4, v0

    move-object v5, p1

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v2

    .line 567
    .restart local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 568
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 569
    .local v3, "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object v4, v2

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setGroupCcListUri(Ljava/util/Collection;)V

    .line 570
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIncomingMessageReceived, groupCcList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v3    # "groupCcList":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpIncomingMessageReceived(IZLjava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/Object;)V

    .line 577
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 579
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 580
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move v6, v4

    goto :goto_3

    :cond_9
    move v6, v10

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 581
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v11

    .line 579
    move v4, v1

    invoke-virtual/range {v3 .. v11}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V

    .line 582
    return-void
.end method

.method protected onIncomingSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;)V
    .locals 23
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSlmMessageReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v15

    .line 593
    .local v15, "phoneId":I
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 594
    invoke-virtual {v1, v15, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v14

    .line 596
    .local v14, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-le v1, v12, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    move/from16 v17, v1

    .line 597
    .local v17, "isGroupSlm":Z
    if-eqz v17, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_1
    move-object v11, v1

    .line 598
    .local v11, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v15, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v10

    .line 599
    .local v10, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v1, v14, v11, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 601
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_2

    .line 602
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v2, v3, v14, v11, v10}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    .line 601
    :cond_2
    move-object v9, v1

    .line 604
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v9, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSlmMessageReceived: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v13, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 610
    :cond_3
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 611
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 612
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInReplyToContributionId(Ljava/lang/String;)V

    .line 613
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setOwnPhoneNum(Ljava/lang/String;)V

    .line 614
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setOwnImsi(Ljava/lang/String;)V

    .line 615
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsTokenUsed:Z

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setIsTokenUsed(Z)V

    .line 616
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v10, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v18

    .line 619
    .local v18, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    const/4 v1, 0x0

    .line 620
    .local v1, "suggestion":Ljava/lang/String;
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 621
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->isMultipart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 622
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onIncomingSlmMessage: isMultipart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v2, "multipart":Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 625
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onIncomingSlmMessage: message includes suggestion"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 627
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 628
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    .line 629
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingSlmMessage: suggestion ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v1

    goto :goto_3

    .line 633
    .end local v2    # "multipart":Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
    :cond_4
    move-object/from16 v19, v1

    .end local v1    # "suggestion":Ljava/lang/String;
    .local v19, "suggestion":Ljava/lang/String;
    :goto_3
    if-eqz v18, :cond_5

    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-nez v1, :cond_5

    .line 634
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "duplicate message, ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 636
    :cond_5
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    const-string v2, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 639
    invoke-virtual {v3, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v5

    .line 638
    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move v8, v12

    move/from16 v16, v13

    move-object/from16 v22, v14

    move-object v14, v9

    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto/16 :goto_5

    .line 641
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_6
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v1, :cond_7

    .line 642
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 643
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    .line 642
    move-object v6, v9

    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v6, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object v9, v1

    move-object/from16 v20, v10

    .end local v10    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .local v20, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    move-object v10, v2

    move-object/from16 v21, v11

    .end local v11    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v21, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    move-object v11, v3

    move v3, v12

    move-object v12, v4

    move/from16 v16, v13

    move v13, v5

    move-object/from16 v22, v14

    .end local v14    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v22, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move v14, v15

    invoke-virtual/range {v8 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 644
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v1, v2, :cond_8

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_8

    .line 645
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    goto :goto_4

    .line 641
    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v20    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v21    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local v22    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v10    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .restart local v11    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .restart local v14    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_7
    move-object v6, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move v3, v12

    move/from16 v16, v13

    move-object/from16 v22, v14

    .line 649
    .end local v9    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v10    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .end local v11    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .end local v14    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v20    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .restart local v21    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .restart local v22    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v8, v3

    move-object v3, v6

    move-object/from16 v4, p1

    move-object v14, v6

    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v14, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    .line 651
    .restart local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_5
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    if-eqz v2, :cond_9

    .line 652
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V

    .line 653
    invoke-virtual {v14, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 655
    :cond_9
    invoke-virtual {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 657
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    move-result-object v2

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 658
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_a

    move v11, v8

    goto :goto_6

    :cond_a
    move/from16 v11, v16

    :goto_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 659
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v16

    .line 657
    move-object v8, v2

    move v9, v15

    move-object v2, v14

    .end local v14    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object v14, v3

    move v3, v15

    .end local v15    # "phoneId":I
    .local v3, "phoneId":I
    move-object v15, v4

    invoke-virtual/range {v8 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V

    .line 660
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 116
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 118
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 119
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 94
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onMessageSendResponse: no participants for this chat"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 102
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 103
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 147
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 148
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 162
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 135
    return-void
.end method

.method protected onProcessPendingMessages(I)V
    .locals 14
    .param p1, "phoneId"    # I

    .line 663
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_PROCESS_PENDING_MESSAGES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 665
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string v1, "num_of_display_notification_atonce"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    .line 666
    .local v1, "limit":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 667
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 668
    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingMessages(I)V

    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, "count":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 674
    .local v5, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pending notification list size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " limit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-lez v1, :cond_2

    .line 676
    invoke-static {v5, v1}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/helper/CollectionUtils$Partition;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 677
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;

    invoke-direct {v8, p0, p1, v3, v7}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    const-wide/16 v9, 0x3e8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "count":I
    .local v11, "count":I
    int-to-long v12, v4

    mul-long/2addr v12, v9

    invoke-virtual {p0, v8, v12, v13}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    move v4, v11

    goto :goto_1

    .end local v11    # "count":I
    .restart local v4    # "count":I
    :cond_1
    goto :goto_2

    .line 684
    :cond_2
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingNotifications(Ljava/util/List;)V

    .line 686
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v4    # "count":I
    .end local v5    # "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_2
    goto :goto_0

    .line 687
    :cond_3
    return-void
.end method

.method protected onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    .line 471
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendMessageHandleReportFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 473
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_1

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mImdnId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 475
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 479
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSendMessageHandleReportFailed: Message not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v1    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_0
    goto :goto_1

    .line 482
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSendMessageHandleReportFailed: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_1
    return-void
.end method

.method protected registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected reportMessages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$x21JHiEkNOWTV9k-qjxwd6KDHww;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$x21JHiEkNOWTV9k-qjxwd6KDHww;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 404
    return-void
.end method

.method protected resendMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .line 316
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method protected sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 22
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "messageNumber"    # I
    .param p7, "isBroadcastMsg"    # Z
    .param p8, "isprotectedAccountMsg"    # Z
    .param p9, "isGLSMsg"    # Z
    .param p10, "deviceName"    # Ljava/lang/String;
    .param p11, "reliableMessage"    # Ljava/lang/String;
    .param p12, "xmsMessage"    # Ljava/lang/String;
    .param p14, "isTemporary"    # Z
    .param p15, "maapTrafficType"    # Ljava/lang/String;
    .param p16, "referenceMessageId"    # Ljava/lang/String;
    .param p17, "referenceMessageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .local p3, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .local p13, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v16, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v18, p13

    move/from16 v17, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    .line 222
    new-instance v0, Ljava/util/concurrent/FutureTask;

    move-object/from16 v19, v1

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;

    move-object/from16 v20, v0

    move-object v0, v1

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 306
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/im/ImMessage;>;"
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-object v0
.end method

.method protected sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 171
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage: message id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, " 0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const v2, 0x40000001    # 2.0000002f

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 181
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 182
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 183
    .end local v1    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "pending_for_regi"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 192
    return-void
.end method
