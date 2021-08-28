.class Lcom/sec/internal/ims/core/ImsIconManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 1108
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1114
    const-string v1, "android.intent.action.PHONE_NEED_SILENT_REDIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1115
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 1116
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->access$400(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    if-eqz v1, :cond_4

    .line 1117
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1118
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v5

    const-string v6, "Silent Redial Enabled"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1120
    const/4 v4, -0x1

    const-string v5, "SLOTID"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1121
    .local v4, "slotId":I
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 1122
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->access$502(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z

    .line 1123
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1125
    .end local v4    # "slotId":I
    :cond_1
    goto :goto_0

    .line 1126
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->access$502(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z

    .line 1127
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    goto :goto_0

    .line 1130
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1131
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$800(Lcom/sec/internal/ims/core/ImsIconManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1132
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_5

    .line 1133
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1134
    .local v4, "currDensity":I
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5}, Lcom/sec/internal/ims/core/ImsIconManager;->access$900(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 1135
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v6}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v6

    const-string v7, "config is changed. update icon"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1136
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->access$1002(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z

    .line 1137
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1138
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->access$902(Lcom/sec/internal/ims/core/ImsIconManager;I)I

    .line 1139
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$2;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->access$1002(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z

    goto :goto_1

    .line 1130
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "currDensity":I
    :cond_4
    :goto_0
    nop

    .line 1143
    :cond_5
    :goto_1
    return-void
.end method
