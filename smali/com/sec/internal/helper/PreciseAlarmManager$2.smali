.class Lcom/sec/internal/helper/PreciseAlarmManager$2;
.super Landroid/content/BroadcastReceiver;
.source "PreciseAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/PreciseAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 237
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$2;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 240
    const-string v0, "PreciseAlarmManager"

    const-string/jumbo v1, "sendMessageDelayed: get intent, get wake lock for 10secs."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$2;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v0, v0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 242
    return-void
.end method
