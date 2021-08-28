.class public Lcom/sec/internal/ims/servicemodules/im/ImTranslation;
.super Lcom/sec/internal/ims/servicemodules/im/TranslationBase;
.source "ImTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;


# static fields
.field private static final INNER_RELIABLE_URI:Ljava/lang/String; = "content://com.samsung.rcs.im/getreliableimage/"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p3, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .param p4, "imProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/TranslationBase;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create ImTranslation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 74
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 77
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 78
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 79
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1208
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isForeground"    # Z

    .line 1211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 1212
    if-eqz p2, :cond_0

    .line 1213
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1221
    :goto_0
    return-void
.end method

.method private static convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 94
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    return-object v0
.end method

.method private static convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 82
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 85
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "uriString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method private getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    const-string v0, "extras is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v0, "key is null"

    invoke-static {p2, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 488
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 491
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 494
    .end local v1    # "array":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private reportChatbotAsSpam(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 463
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 464
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, "chatbot_uri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "chatbotUri":Ljava/lang/String;
    const-string/jumbo v0, "request_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "request_id":Ljava/lang/String;
    const-string/jumbo v0, "sim_slot_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 467
    .local v12, "slotId":Ljava/lang/String;
    const-string v0, "chatbot_spam_type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 468
    .local v13, "spamType":Ljava/lang/String;
    const-string v0, "chatbot_free_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, "freeText":Ljava/lang/String;
    const-string v0, "messages_id_list"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 471
    .local v15, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 472
    .local v4, "phoneId":I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid slot id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v0, v4

    .end local v4    # "phoneId":I
    .local v0, "phoneId":I
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportChatbotAsSpam() phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    move v5, v0

    move-object v6, v11

    move-object v8, v15

    move-object v9, v13

    move-object v10, v14

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->reportChatbotAsSpam(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private requestAcceptChat(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 381
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "cid":Ljava/lang/String;
    const-string v2, "is_accept"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 384
    .local v2, "isAccept":Ljava/lang/Boolean;
    const-string/jumbo v3, "reason"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 385
    .local v3, "reason":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v1, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->acceptChat(Ljava/lang/String;ZI)V

    .line 386
    return-void
.end method

.method private requestAddParticipantsToChat(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestAddParticipantsToChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "participants_list"

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    return-void

    .line 146
    :cond_1
    :goto_0
    const/4 v3, 0x0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 147
    return-void
.end method

.method private requestAnswerGcChats(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 403
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 404
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "cid":Ljava/lang/String;
    const-string v2, "invitation_answer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 406
    .local v2, "answer":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->answerGcSession(Ljava/lang/String;Z)V

    .line 407
    return-void
.end method

.method private requestChangeGroupAlias(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 196
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeGroupAlias()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "user_alias"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private requestChangeGroupChatIcon(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeGroupChatIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "chatId":Ljava/lang/String;
    const-string v2, "groupchat_icon_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "iconPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private requestChangeGroupChatLeader(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 162
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeGroupChatLeader()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "participants_list"

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    .line 167
    return-void
.end method

.method private requestChangeGroupChatSubject(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeGroupChatSubject()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "subject":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private requestChatbotAnonymize(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 445
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 446
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chatbot_anonymize_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "chatbotUri":Ljava/lang/String;
    const-string v2, "chatbot_anonymize_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "action":Ljava/lang/String;
    const-string v3, "chatbot_command_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "commandId":Ljava/lang/String;
    const-string/jumbo v4, "sim_slot_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "slotId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 451
    .local v5, "phoneId":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 453
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 456
    goto :goto_0

    .line 454
    :catch_0
    move-exception v6

    .line 455
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid slot id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestChatbotAnonymize() phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v5, v7, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->requestChatbotAnonymize(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private requestCloseChat(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 396
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 397
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chats_list"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, "chatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "is_dismissGroupChat"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 399
    .local v2, "isDismissGroupChat":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChat(Ljava/util/List;ZZ)V

    .line 400
    return-void
.end method

.method private requestCreateChat(Landroid/content/Intent;)V
    .locals 36
    .param p1, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "extras":Landroid/os/Bundle;
    move-object v11, v0

    .line 103
    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, v17

    .line 104
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "subject":Ljava/lang/String;
    move-object/from16 v6, v18

    .line 105
    const-string v2, "content_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "sdpContentType":Ljava/lang/String;
    move-object/from16 v7, v19

    .line 106
    const-string/jumbo v2, "request_thread_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .local v20, "threadId":I
    move/from16 v4, v20

    .line 107
    const-string/jumbo v2, "request_message_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    .local v21, "requestMessageId":Ljava/lang/String;
    move-object/from16 v5, v21

    .line 108
    const-string v2, "is_broadcast_msg"

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .local v22, "isBroadcastMsg":Z
    move/from16 v8, v22

    .line 109
    const-string v2, "is_closed_group_chat"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .local v23, "isClosedGroupChat":Z
    move/from16 v9, v23

    .line 110
    const-string v2, "is_token_used"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .local v24, "isTokenUsed":Z
    move/from16 v12, v24

    .line 111
    const-string v2, "is_token_link"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .local v25, "isTokenLink":Z
    move/from16 v13, v25

    .line 112
    const-string/jumbo v2, "sim_slot_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "slotId":Ljava/lang/String;
    move-object/from16 v2, v26

    .line 113
    const-string v10, "groupchat_icon_path"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, "iconPath":Ljava/lang/String;
    move-object/from16 v10, v27

    .line 114
    const-string v14, "conversation_id"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "conversationId":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 115
    const-string v15, "contribution_id"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "contributionId":Ljava/lang/String;
    move-object/from16 v15, v29

    .line 116
    move-object/from16 v30, v1

    const-string/jumbo v1, "session_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "sessionUri":Ljava/lang/String;
    move-object/from16 v16, v31

    .line 118
    move-object/from16 v1, p0

    move-object/from16 v32, v2

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mFileExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;

    move-object/from16 v33, v0

    .end local v0    # "extras":Landroid/os/Bundle;
    .local v33, "extras":Landroid/os/Bundle;
    move-object v0, v1

    move-object/from16 v35, v1

    move-object/from16 v34, v2

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct/range {v0 .. v16}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method private requestDeleteAllChats()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteAllChats()Ljava/util/concurrent/FutureTask;

    .line 378
    return-void
.end method

.method private requestDeleteAllMessages(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 417
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 418
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chats_list"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 419
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "isLocalWipeOut"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 420
    .local v2, "isLocalWipe":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteAllMessages(Ljava/util/List;Z)V

    .line 421
    return-void
.end method

.method private requestDeleteChats(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 411
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chats_list"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "isLocalWipeOut"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 413
    .local v2, "isLocalWipe":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 414
    return-void
.end method

.method private requestDeleteGroupChatIcon(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestDeleteGroupChatIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "chatId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private requestDeleteMessages(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 424
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 425
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "messages_imdn_dir_map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 426
    .local v1, "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "isLocalWipeOut"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 427
    .local v2, "isLocalWipe":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->deleteMessagesByImdnId(Ljava/util/Map;Z)Ljava/util/concurrent/FutureTask;

    .line 428
    return-void
.end method

.method private requestDeliveryTimeout(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 211
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 212
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "chatId":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDeliveryTimeout() chatId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->receiveDeliveryTimeout(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private requestIgnoreIncomingMsgSet(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestIgnoreIncomingMsgSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "chatId":Ljava/lang/String;
    const-string v2, "is_ignore_incoming_msg"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 231
    .local v2, "isIgnore":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->ignoreIncomingMsgSet(Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method private requestMessageRevocation(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 432
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "cid":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestMessageRevocation(): chatId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string/jumbo v2, "user_select_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 437
    .local v2, "userSelectResult":Z
    const-string/jumbo v3, "user_select_message_type"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 438
    .local v3, "userSelectType":I
    const-string v4, "message_imdn_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "imdnId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object v5

    .line 441
    if-eqz v4, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 440
    :goto_0
    invoke-virtual {v5, v1, v6, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->requestMessageRevocation(Ljava/lang/String;Ljava/util/List;ZI)V

    .line 442
    return-void
.end method

.method private requestOpenChat(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 389
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "cid":Ljava/lang/String;
    const-string v2, "invitation_ui"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 392
    .local v2, "hasInvitationUI":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->openChat(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method private requestReadMessage(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 280
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "cid":Ljava/lang/String;
    const-string v2, "messages_list"

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "update_only_mstore"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 283
    .local v3, "updateOnlyMStore":Z
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    .line 284
    return-void
.end method

.method private requestRemoveGroupChatParticipants(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestRemoveGroupChatParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "chatId":Ljava/lang/String;
    const-string/jumbo v2, "participants_list"

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 159
    return-void
.end method

.method private requestReportMessage(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 204
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestReportMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "messages_list"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->reportMessages(Ljava/util/ArrayList;)V

    .line 208
    return-void
.end method

.method private requestSendComposingNotification(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 287
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 288
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "cid":Ljava/lang/String;
    const-string v2, "interval"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    .local v2, "interval":I
    const-string v3, "is_typing"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 292
    .local v3, "isTyping":Z
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendComposingNotification(Ljava/lang/String;IZ)V

    .line 293
    return-void
.end method

.method private requestSendMessage(Landroid/content/Intent;)V
    .locals 36
    .param p1, "intent"    # Landroid/content/Intent;

    .line 245
    move-object/from16 v0, p0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestSendMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "chat_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "cid":Ljava/lang/String;
    const-string v3, "message_body"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 250
    .local v21, "body":Ljava/lang/String;
    const-string v3, "disposition_notification"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 251
    .local v22, "disposition":Ljava/lang/String;
    const-string v3, "content_type"

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 252
    .local v23, "contentType":Ljava/lang/String;
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 253
    .local v24, "requestMessageId":Ljava/lang/String;
    const-string v3, "message_number"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 254
    .local v25, "messageNumber":I
    const-string v3, "is_broadcast_msg"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 255
    .local v26, "isBroadcastMsg":Z
    const-string v3, "is_publicAccountMsg"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 256
    .local v27, "isPublicAccountMsg":Z
    if-eqz v27, :cond_0

    .line 257
    const-string/jumbo v3, "publicAccount_Send_Domain"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "publicAccountDomain":Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/internal/helper/PublicAccountUri;->setPublicAccountDomain(Ljava/lang/String;)V

    .line 260
    .end local v3    # "publicAccountDomain":Ljava/lang/String;
    :cond_0
    const-string v3, "device_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 261
    .local v28, "deviceName":Ljava/lang/String;
    const-string/jumbo v3, "reliable_message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 262
    .local v29, "reliableMessage":Ljava/lang/String;
    const-string v3, "length_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 263
    .local v30, "xmsMessage":Ljava/lang/String;
    const-string v3, "group_ccuser_list"

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 264
    .local v31, "ccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "is_temporary"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 265
    .local v32, "isTemporary":Z
    const-string v3, "maap_traffic_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 266
    .local v15, "maapTrafficType":Ljava/lang/String;
    const-string/jumbo v3, "reference_message_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 267
    .local v33, "referenceMessageId":Ljava/lang/String;
    const-string/jumbo v3, "reference_message_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 269
    .local v34, "referenceMessageType":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 270
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestSendMessage, maapTrafficType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static/range {v22 .. v22}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    const/4 v12, 0x0

    .line 274
    invoke-static/range {v31 .. v31}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v16

    .line 273
    move-object v4, v2

    move-object/from16 v5, v21

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v11, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v35, v15

    .end local v15    # "maapTrafficType":Ljava/lang/String;
    .local v35, "maapTrafficType":Ljava/lang/String;
    move-object/from16 v15, v30

    move/from16 v17, v32

    move-object/from16 v18, v35

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    invoke-virtual/range {v3 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 276
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1088
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_LAST_MESSAGES_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.OPEN_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_REVOKE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELIVERY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ACCEPT_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_GROUPCHAT_ICON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.IGNORE_INCOMING_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ANSWER_GC_CHAT_INVITATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_IS_COMPOSING_ACTIVE_URIS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto :goto_1

    :sswitch_12
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_13
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_14
    const-string v1, "com.samsung.rcs.framework.chatbot.action.REPORT_CHATBOT_AS_SPAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_1

    :sswitch_15
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.READ_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_16
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_CHATS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_17
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_18
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REPORT_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_19
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_1a
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1200
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent received. acition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1196
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->reportChatbotAsSpam(Landroid/content/Intent;)V

    .line 1197
    goto/16 :goto_2

    .line 1192
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChatbotAnonymize(Landroid/content/Intent;)V

    .line 1193
    goto/16 :goto_2

    .line 1188
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAcceptChat(Landroid/content/Intent;)V

    .line 1189
    goto/16 :goto_2

    .line 1184
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestMessageRevocation(Landroid/content/Intent;)V

    .line 1185
    goto/16 :goto_2

    .line 1180
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestIgnoreIncomingMsgSet(Landroid/content/Intent;)V

    .line 1181
    goto/16 :goto_2

    .line 1176
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeliveryTimeout(Landroid/content/Intent;)V

    .line 1177
    goto :goto_2

    .line 1172
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestReportMessage(Landroid/content/Intent;)V

    .line 1173
    goto :goto_2

    .line 1168
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupAlias(Landroid/content/Intent;)V

    .line 1169
    goto :goto_2

    .line 1164
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteGroupChatIcon(Landroid/content/Intent;)V

    .line 1165
    goto :goto_2

    .line 1160
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatIcon(Landroid/content/Intent;)V

    .line 1161
    goto :goto_2

    .line 1156
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatSubject(Landroid/content/Intent;)V

    .line 1157
    goto :goto_2

    .line 1152
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestChangeGroupChatLeader(Landroid/content/Intent;)V

    .line 1153
    goto :goto_2

    .line 1148
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestRemoveGroupChatParticipants(Landroid/content/Intent;)V

    .line 1149
    goto :goto_2

    .line 1144
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAnswerGcChats(Landroid/content/Intent;)V

    .line 1145
    goto :goto_2

    .line 1140
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestGetLastSentMessages(Landroid/content/Intent;)V

    .line 1141
    goto :goto_2

    .line 1136
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestComposingActiveUris(Landroid/content/Intent;)V

    .line 1137
    goto :goto_2

    .line 1132
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestCloseChat(Landroid/content/Intent;)V

    .line 1133
    goto :goto_2

    .line 1128
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestOpenChat(Landroid/content/Intent;)V

    .line 1129
    goto :goto_2

    .line 1124
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteAllChats()V

    .line 1125
    goto :goto_2

    .line 1120
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteChats(Landroid/content/Intent;)V

    .line 1121
    goto :goto_2

    .line 1116
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteAllMessages(Landroid/content/Intent;)V

    .line 1117
    goto :goto_2

    .line 1112
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestDeleteMessages(Landroid/content/Intent;)V

    .line 1113
    goto :goto_2

    .line 1108
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestReadMessage(Landroid/content/Intent;)V

    .line 1109
    goto :goto_2

    .line 1104
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestSendComposingNotification(Landroid/content/Intent;)V

    .line 1105
    goto :goto_2

    .line 1100
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestSendMessage(Landroid/content/Intent;)V

    .line 1101
    goto :goto_2

    .line 1096
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestAddParticipantsToChat(Landroid/content/Intent;)V

    .line 1097
    goto :goto_2

    .line 1092
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->requestCreateChat(Landroid/content/Intent;)V

    .line 1093
    nop

    .line 1204
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7212976a -> :sswitch_1a
        -0x63e10bd8 -> :sswitch_19
        -0x5a91fcd3 -> :sswitch_18
        -0x5806f397 -> :sswitch_17
        -0x4a02324d -> :sswitch_16
        -0x443c4538 -> :sswitch_15
        -0x42c6caa9 -> :sswitch_14
        -0x2fc4c1d8 -> :sswitch_13
        -0x26f27e0a -> :sswitch_12
        -0x23214838 -> :sswitch_11
        -0x1c972452 -> :sswitch_10
        -0x1c8960ac -> :sswitch_f
        -0x18f8790f -> :sswitch_e
        -0x16f9c874 -> :sswitch_d
        -0x1364e32f -> :sswitch_c
        0x165ef74b -> :sswitch_b
        0x191f8894 -> :sswitch_a
        0x1f00cd4b -> :sswitch_9
        0x29ec1a65 -> :sswitch_8
        0x2b301eba -> :sswitch_7
        0x36062f80 -> :sswitch_6
        0x39906906 -> :sswitch_5
        0x3caa8118 -> :sswitch_4
        0x3defb3e3 -> :sswitch_3
        0x6333b075 -> :sswitch_2
        0x7111bcf1 -> :sswitch_1
        0x7a5557b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$requestChangeGroupChatIcon$1$ImTranslation(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "iconPath"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    .line 184
    const-string v2, "groupchat_icon_name"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/helper/FileUtils;->copyFileFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$requestCreateChat$0$ImTranslation(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "slotId"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "threadId"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "sdpContentType"    # Ljava/lang/String;
    .param p7, "isBroadcastMsg"    # Z
    .param p8, "isClosedGroupChat"    # Z
    .param p9, "iconPath"    # Ljava/lang/String;
    .param p10, "extras"    # Landroid/os/Bundle;
    .param p11, "isTokenUsed"    # Z
    .param p12, "isTokenLink"    # Z
    .param p13, "conversationId"    # Ljava/lang/String;
    .param p14, "contributionId"    # Ljava/lang/String;
    .param p15, "sessionUri"    # Ljava/lang/String;

    .line 119
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 120
    .local v2, "phoneId":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 125
    move-object/from16 v5, p1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move-object/from16 v5, p1

    .line 127
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCreateChat() phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-nez p2, :cond_1

    .line 129
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V

    .line 130
    return-void

    .line 133
    :cond_1
    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToUriList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    .line 134
    const-string v7, "groupchat_icon_name"

    move-object/from16 v15, p10

    invoke-virtual {v15, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, p9

    invoke-static {v0, v14, v7}, Lcom/sec/internal/helper/FileUtils;->copyFileFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    invoke-static/range {p15 .. p15}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    :goto_1
    move-object/from16 v20, v7

    .line 133
    move v7, v2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v0

    move/from16 v16, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-virtual/range {v6 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Ljava/util/concurrent/Future;

    .line 136
    return-void
.end method

.method public notifyComposingActiveUris(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p2, "composingActiveUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyComposingActiveUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_IS_COMPOSING_ACTIVE_URIS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "listComposingUri":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz p2, :cond_0

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 320
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "composing_uri_list"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 321
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 322
    return-void
.end method

.method public notifyLastSentMessagesStatus(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyLastSentMessagesStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GET_LAST_MESSAGES_SENT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "last_sent_messages_status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 332
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 333
    return-void
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
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

    .line 750
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    if-eqz p2, :cond_0

    .line 757
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 759
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 760
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
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

    .line 736
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAddParticipantsSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 740
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 743
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v3, "participants_list"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 745
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 746
    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 888
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupAliasFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 890
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string/jumbo v1, "user_alias"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 896
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 877
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupAliasSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 879
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUP_ALIAS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string/jumbo v1, "user_alias"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 885
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 864
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatIconFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupchat_icon_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 874
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 852
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatIconSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 854
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_GROUPCHAT_ICON_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 857
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupchat_icon_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 861
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
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

    .line 818
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatLeaderFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 820
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 825
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 826
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 806
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatLeaderSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CHANGE_GROUPCHAT_LEADER_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 811
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 813
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 814
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 840
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatSubjectFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 842
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 845
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 848
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 829
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangeGroupChatSubjectSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 834
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 837
    return-void
.end method

.method public onChatClosed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 606
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatClosed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_CLOSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 615
    return-void
.end method

.method public onChatEstablished(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 584
    .local p4, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatEstablished()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_ESTABLISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "session_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, "supportedContentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 595
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 599
    const-string/jumbo v2, "supported_content_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 601
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 602
    return-void
.end method

.method public onChatInvitationReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 13
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 668
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatInvitationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "supportedContentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 676
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 677
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 679
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->needToUseGroupChatInvitationUI()Z

    move-result v1

    const-string/jumbo v2, "supported_content_list"

    const-string/jumbo v3, "remote_uri"

    const-string/jumbo v4, "session_uri"

    const-string v5, "contribution_id"

    const-string v6, "conversation_id"

    const-string v7, "content_type"

    const-string/jumbo v8, "subject"

    const-string v9, "chat_id"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_7

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_SESSION"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v11

    .line 684
    :goto_0
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 687
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v11

    .line 686
    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_4

    .line 689
    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 688
    :goto_2
    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 691
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 694
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 696
    :cond_6
    invoke-direct {p0, v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    goto/16 :goto_7

    .line 699
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiatorAlias()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "user_alias"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v7

    const-string v8, "is_token_used"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 707
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v11

    .line 706
    :goto_3
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 709
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v11

    .line 708
    :goto_4
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_a

    .line 711
    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 710
    :goto_5
    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isClosedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    .line 714
    .local v4, "isClosedGroupChat":Z
    const-string v5, "is_closed_group_chat"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotManualAcceptUsed()Z

    move-result v5

    const-string v6, "is_bot"

    if-eqz v5, :cond_b

    .line 716
    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 718
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session.getInitiator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "service_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 722
    :cond_b
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    :cond_c
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 725
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInitiator()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 728
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 730
    :cond_e
    invoke-direct {p0, v1, v10}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 732
    .end local v4    # "isClosedGroupChat":Z
    :goto_7
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 619
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatSubjectUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_SUBJECT_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string/jumbo v3, "subject_participant"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string/jumbo v1, "subject_timestamp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 628
    return-void
.end method

.method public onChatUpdateState(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 580
    return-void
.end method

.method public onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z
    .param p3, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "userAlias"    # Ljava/lang/String;
    .param p5, "isTyping"    # Z
    .param p6, "interval"    # I

    .line 556
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onComposingNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    if-nez p3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "interval"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v1, "is_typing"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    const-string/jumbo v1, "user_alias"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 567
    return-void
.end method

.method public onCreateChatFailed(IILcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "threadId"    # I
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 517
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateChatFailed(), notifyError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v1, "request_thread_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    if-nez p4, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    const-string/jumbo v3, "request_message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 525
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_slot_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 527
    return-void
.end method

.method public onCreateChatSucceeded(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 5
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 499
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateChatSucceeded(), notify, chat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "participants_list"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getThreadId()I

    move-result v1

    const-string/jumbo v3, "request_thread_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "subject"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    const-string/jumbo v1, "request_message_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "sim_slot_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "conversation_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v1, "contribution_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 513
    return-void
.end method

.method public onDeviceOutOfMemory()V
    .locals 2

    .line 570
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeviceOutOfMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.OUT_OF_MEMORY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;

    .line 645
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGroupChatIconDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_ICON_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 651
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 632
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGroupChatIconUpdated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_ICON_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/FileUtils;->getUriForFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupchat_icon_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v2, "groupchat_icon_participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    const-string v2, "groupchat_icon_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 640
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 641
    return-void
.end method

.method public onGroupChatLeaderUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "leaderParticipant"    # Ljava/lang/String;

    .line 1267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupChatLeaderUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_GROUPCHAT_LEADER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v1, "leaderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1275
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1276
    return-void
.end method

.method public onIgnoreIncomingMsgSetResponse(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .line 235
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onIgnoreIncomingMsgSetResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.IGNORE_INCOMING_MESSAGE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 1037
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSentNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->createImdnNotificationReceivedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1039
    return-void
.end method

.method public onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 899
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageInserted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "msg is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 904
    .local v1, "messageId":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "chatId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReliableMessage()Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "reliableMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    .line 907
    .local v4, "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    const-string v5, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v5, "message_id"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 917
    const-string v5, "chat_id"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v5

    const-string v6, "message_type"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 919
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    const-string v6, "message_direction"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getServiceTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "message_service"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.samsung.rcs.im/getreliableimage/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, "uri":Ljava/lang/String;
    const-string/jumbo v7, "reliable_message"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    .end local v6    # "uri":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 926
    return-void

    .line 912
    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 973
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v0, "message is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReliableMessage()Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "reliableMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 979
    .local v2, "mid":Ljava/lang/Long;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v4, "chat_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v4, "message_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 983
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v4

    const-string v5, "is_token_used"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v4

    const-string v5, "message_type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    const-string v5, "is_group_chat"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 987
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 988
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceName:Ljava/lang/String;

    const-string v5, "device_name"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 992
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isRoutingMsg()Z

    move-result v4

    const-string v5, "is_routingMsg"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 993
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-eq v4, v5, :cond_1

    .line 994
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->getId()I

    move-result v4

    const-string/jumbo v5, "routing_msg_type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 998
    :cond_1
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.samsung.rcs.im/getreliableimage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "uri":Ljava/lang/String;
    const-string/jumbo v6, "reliable_message"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    .end local v5    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    const-string v6, "message_direction"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v5, :cond_3

    .line 1006
    move-object v5, p1

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getGroupCcListUri()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1007
    move-object v5, p1

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getGroupCcListUri()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "group_ccuser_list"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1011
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v5, v6, :cond_5

    .line 1012
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "from"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v5, v6, :cond_6

    .line 1016
    const-string v5, "is_bot"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->putMaapExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Landroid/content/Intent;)V

    .line 1021
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1022
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "reference_message_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "reference_message_type"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsTrafficType()Ljava/lang/String;

    move-result-object v5

    .line 1027
    .local v5, "rcsTrafficType":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1028
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rcsTrafficType = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string/jumbo v6, "rcs_traffic_type"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    :cond_8
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1033
    return-void
.end method

.method public onMessageReportResponse(Ljava/lang/Long;Z)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/Long;
    .param p2, "isSuccess"    # Z

    .line 218
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReportResponse, messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REPORT_MESSAGES_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
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

    .line 1043
    .local p2, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageRevokeTimerExpired(): chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imdnIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_REVOKE_TIMER_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "messages_imdn_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1048
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1049
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 945
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 947
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 950
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    const-string/jumbo v1, "request_message_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 951
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "message_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 953
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageSendResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 955
    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # I
    .param p3, "reasonCode"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 959
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageSendResponseFailed(): reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 963
    const-string v1, "message_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    const-string v1, "error_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-wide/16 v1, -0x1

    if-nez p4, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    const-string/jumbo v5, "request_message_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 967
    const-string v3, "message_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 968
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 969
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 930
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendResponseTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v0, "msg is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE_TAKETOOLONG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 935
    .local v1, "messageId":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "chatId":Ljava/lang/String;
    const-string v3, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v3, "message_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 939
    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 941
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v0, "message is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->createMessageSendingFailedIntent(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 552
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 531
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "message is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 536
    .local v0, "messageId":Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v2, "message_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v2, "response_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    const-string/jumbo v2, "request_message_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 541
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v2

    const-string v4, "is_broadcast_msg"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 543
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 655
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantAliasUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_ALIAS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "participant_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 664
    return-void
.end method

.method public onParticipantDeleted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1070
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "participant_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    const-string/jumbo v2, "participant_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1078
    return-void
.end method

.method public onParticipantDeleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p1, "participantsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/ImParticipantData;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANTS_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "participants_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1084
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1085
    return-void
.end method

.method public onParticipantInserted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1052
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "participant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "participant_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1057
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    const-string/jumbo v2, "participant_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1060
    return-void
.end method

.method public onParticipantInserted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;)V"
        }
    .end annotation

    .line 1063
    .local p1, "participantsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/ImParticipantData;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParticipantInserted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANTS_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "participants_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1066
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 1067
    return-void
.end method

.method public onParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
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

    .line 792
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
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

    .line 797
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
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

    .line 802
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 3
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

    .line 778
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveParticipantsFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "participants_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 786
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 787
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
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

    .line 764
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveParticipantsSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 768
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.REMOVE_PARTICIPANTS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string/jumbo v1, "response_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 771
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->convertToStringList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v3, "participants_list"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 773
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;Z)V

    .line 774
    return-void
.end method

.method public onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z
    .param p3, "requestId"    # Ljava/lang/String;

    .line 365
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReportChatbotAsSpamRespReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.REPORT_CHATBOT_AS_SPAM_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "chatbot_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v2, "response_status"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const-string/jumbo v2, "request_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 373
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public onRequestChatbotAnonymizeNotiReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "commandId"    # Ljava/lang/String;

    .line 353
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatbotAnonymizeNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "chatbot_anonymize_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "chatbot_anonymize_result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "chatbot_command_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public onRequestChatbotAnonymizeResponse(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z
    .param p3, "commandId"    # Ljava/lang/String;
    .param p4, "retryAfter"    # I

    .line 336
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatbotAnonymizeNotificationReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.chatbot.action.CHATBOT_ANONYMIZE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "chatbot_anonymize_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v2, "response_status"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v2, "chatbot_command_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-nez p2, :cond_0

    const/4 v2, -0x1

    if-eq p4, v2, :cond_0

    .line 346
    const-string/jumbo v2, "retry_after"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public requestComposingActiveUris(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 296
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestComposingActiveUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 298
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "cid":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getComposingActiveUris(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public requestGetLastSentMessages(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "request_ids"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLastSentMessages(): REQUEST_MESSAGES_LIST size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getLastSentMessagesStatus(Ljava/util/List;)V

    .line 308
    return-void
.end method

.method public updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 1225
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1226
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1232
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1233
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1234
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageInserted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1235
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 1237
    :cond_0
    return-void
.end method

.method public updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 1242
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1243
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantInserted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 1244
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantDeleted(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1247
    :cond_1
    :goto_0
    return-void
.end method

.method public updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 10
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1252
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_3

    .line 1253
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/ImParticipantData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1255
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    new-instance v9, Lcom/sec/ims/im/ImParticipantData;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v7

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/ims/im/ImParticipantData;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1257
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v1, :cond_2

    .line 1258
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantInserted(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1260
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onParticipantDeleted(Ljava/util/ArrayList;)V

    .line 1263
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/im/ImParticipantData;>;"
    :cond_3
    :goto_1
    return-void
.end method
