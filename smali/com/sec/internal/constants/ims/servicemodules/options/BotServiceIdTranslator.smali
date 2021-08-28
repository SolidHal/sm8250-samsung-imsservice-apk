.class public Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
.super Ljava/lang/Object;
.source "BotServiceIdTranslator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BotServiceIdTranslator"

.field private static mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;


# instance fields
.field private mBotServiceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
    .locals 2

    .line 28
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;-><init>()V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains: serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-void
.end method

.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translate: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
