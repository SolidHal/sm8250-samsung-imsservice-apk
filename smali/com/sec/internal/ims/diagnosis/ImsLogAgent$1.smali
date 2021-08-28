.class Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x40c5394b

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x6f6b3bfd

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->access$200(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V

    goto :goto_2

    .line 105
    :cond_4
    const-string/jumbo v0, "simslot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "phoneId":I
    const-string v1, "feature"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "bigDataFeature":I
    const-string v2, "bigdata_info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "bigDataInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-static {v3, v0, v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->access$100(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;IILjava/lang/String;)V

    .line 110
    nop

    .line 116
    .end local v0    # "phoneId":I
    .end local v1    # "bigDataFeature":I
    .end local v2    # "bigDataInfo":Ljava/lang/String;
    :goto_2
    return-void
.end method
