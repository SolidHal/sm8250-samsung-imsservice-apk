.class public Lcom/sec/internal/ims/config/PowerController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/PowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Receiver"
.end annotation


# instance fields
.field public final ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentFilterAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SLEEP_ALARM_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilterAction:Ljava/util/List;

    .line 147
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilterAction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .end local v1    # "action":Ljava/lang/String;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "received alarm expired. acquire wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object v0, v0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    .line 161
    :cond_0
    return-void
.end method
