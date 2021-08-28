.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
.super Ljava/lang/Object;
.source "NsdsFcmListenerService.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;
    .locals 3
    .param p1, "data"    # Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 48
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getPnsParser: data null, vail"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0

    .line 52
    :cond_0
    const-string v1, "messageType"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPnsParser: AndsfMessageParser"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;-><init>()V

    return-object v0

    .line 55
    :cond_1
    const-string/jumbo v1, "push-message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPnsParser: PushMessageParser"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;-><init>()V

    return-object v0

    .line 58
    :cond_2
    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 59
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPnsParser: EventListMessageParser"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;-><init>()V

    return-object v0

    .line 62
    :cond_3
    return-object v0
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;

    move-result-object v0

    .line 27
    .local v0, "parser":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;
    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;->parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;

    move-result-object v1

    .line 35
    .local v1, "message":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->shouldBroadcast(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->broadcastFcmMessage(Landroid/content/Context;)V

    .line 40
    .end local v1    # "message":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageReceived: parsing failed."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void
.end method
