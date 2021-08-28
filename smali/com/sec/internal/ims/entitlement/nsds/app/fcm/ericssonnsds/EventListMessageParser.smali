.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;
.super Ljava/lang/Object;
.source "EventListMessageParser.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    .locals 6
    .param p1, "data"    # Ljava/util/Map;

    .line 16
    const-string v0, "message"

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 17
    .local v1, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 19
    .local v2, "message":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "origMessage":Ljava/lang/String;
    const-class v3, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;

    move-object v2, v3

    .line 22
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->setOrigMessage(Ljava/lang/String;)V

    .line 23
    iget-object v3, v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    if-eqz v3, :cond_0

    .line 24
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseMessage: event date-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " events-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->events:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseMessage: parsing failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "origMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot parse received message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_1
    return-object v2
.end method
