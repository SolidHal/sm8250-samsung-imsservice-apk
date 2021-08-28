.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;
.super Ljava/lang/Object;
.source "AndsfMessageParser.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    .locals 4
    .param p1, "data"    # Ljava/util/Map;

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "messageType":Ljava/lang/String;
    const-string v1, "messageType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseMessage: messageType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/AndsfMessage;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
