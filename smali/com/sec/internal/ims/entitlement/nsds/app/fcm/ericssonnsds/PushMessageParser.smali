.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;
.super Ljava/lang/Object;
.source "PushMessageParser.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    .locals 8
    .param p1, "data"    # Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    .local v0, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 21
    .local v1, "pushMessage":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;
    const/4 v2, 0x0

    .line 22
    .local v2, "origMessage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 24
    .local v3, "confirmationUrl":Ljava/lang/String;
    const-string/jumbo v4, "push-message"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 25
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_0
    const-string v4, "confirmation_url"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 28
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 32
    const-class v4, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;

    move-object v1, v4

    .line 33
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->setOrigMessage(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->setConfirmUrl(Ljava/lang/String;)V

    .line 35
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseMessage: message type-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " subtype-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_2
    goto :goto_0

    .line 38
    :catch_0
    move-exception v4

    .line 39
    .local v4, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot parse received message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .end local v4    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_0
    return-object v1
.end method
