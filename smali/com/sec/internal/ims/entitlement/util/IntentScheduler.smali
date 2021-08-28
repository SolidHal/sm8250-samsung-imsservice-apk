.class public Lcom/sec/internal/ims/entitlement/util/IntentScheduler;
.super Ljava/lang/Object;
.source "IntentScheduler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mActionPendingIntent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->LOG_TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotid"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->intentkey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 62
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_1

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    if-nez p3, :cond_0

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p3, v2

    .line 68
    :cond_0
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->intentkey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v0
.end method

.method public static hasActionPendingIntent(ILjava/lang/String;)Z
    .locals 2
    .param p0, "slotid"    # I
    .param p1, "action"    # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->intentkey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static intentkey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "slotid"    # I
    .param p1, "action"    # Ljava/lang/String;

    .line 110
    if-gez p0, :cond_0

    .line 111
    const/4 p0, 0x0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleTimer(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotid"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "millis"    # J

    .line 34
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    .line 35
    return-void
.end method

.method public static scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotid"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "millis"    # J

    .line 38
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->intentkey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->getPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 42
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, v0, p4, p5}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 43
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduled action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "Pending timers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static stopAllTimers(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAllTimers()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "scheduledActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "intentkey":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .end local v2    # "intentkey":Ljava/lang/String;
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public static stopTimer(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotid"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 86
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->intentkey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static stopTimer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentkey"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 91
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 92
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopTimer: intentkey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 96
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopped Timer for intentkey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->mActionPendingIntent:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
