.class Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResipMiscHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ATCmdReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$1;

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Factory intent doesn\'t have ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "command":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Factory intent doesn\'t have value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 99
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Factory intent command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x1

    .line 102
    .local v3, "result":Z
    const-string v4, ""

    .line 104
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 105
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_3

    .line 106
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v5

    const-string v7, "SMS_SETTING"

    invoke-interface {v5, v7, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v3

    .line 109
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$500()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "OMADM_VALUE"

    if-eqz v5, :cond_6

    .line 111
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_5

    .line 112
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v5

    invoke-interface {v5, v7, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v3

    .line 115
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$700()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 116
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 117
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_7

    .line 118
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v5

    invoke-interface {v5, v7, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result v3

    .line 121
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$700()Ljava/lang/String;

    move-result-object v4

    .line 126
    :goto_0
    if-eqz v3, :cond_8

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 129
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$1000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$1100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {v5, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_9
    return-void

    .line 136
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "result":Z
    .end local v4    # "resultString":Ljava/lang/String;
    :cond_a
    :goto_2
    return-void

    .line 79
    .end local v0    # "action":Ljava/lang/String;
    :cond_b
    :goto_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong Event Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
