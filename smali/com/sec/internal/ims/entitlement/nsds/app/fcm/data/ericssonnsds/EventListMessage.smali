.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;
.super Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.source "EventListMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventList"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;-><init>()V

    return-void
.end method

.method private createStringArrayListFromEvents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "eventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;

    .line 58
    .local v2, "eventType":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "eventType":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventType;
    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "malformed messsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->origMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "PNS: "

    return-object v0
.end method


# virtual methods
.method public broadcastFcmMessage(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->origMessage:Ljava/lang/String;

    const-string/jumbo v2, "orig_push_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->date:Ljava/lang/String;

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->createStringArrayListFromEvents()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "event_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->getNotificationContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "push notification broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 53
    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x1

    return v0
.end method
