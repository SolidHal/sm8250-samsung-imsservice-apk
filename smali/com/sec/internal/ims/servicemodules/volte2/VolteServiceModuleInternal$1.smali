.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;
.super Landroid/content/BroadcastReceiver;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 268
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.LTE_BAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    const/16 v6, 0x17

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 304
    :pswitch_0
    const-string v1, "com.att.iqi.extra.SERVICE_RUNNING"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 305
    .local v1, "mIqiEnable":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 300
    .end local v1    # "mIqiEnable":Z
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v1, v6, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 301
    goto :goto_2

    .line 296
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v1, v6, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 297
    goto :goto_2

    .line 290
    :pswitch_3
    const-string v1, "cmd"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "psbarred":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v3, 0xe

    .line 292
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 291
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 293
    goto :goto_2

    .line 285
    .end local v1    # "psbarred":Ljava/lang/String;
    :pswitch_4
    const-string v1, "BAND"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "band":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->onLteBancChanged(Ljava/lang/String;)V

    .line 287
    goto :goto_2

    .line 275
    .end local v1    # "band":Ljava/lang/String;
    :pswitch_5
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, "ecmState":Z
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)I

    move-result v5

    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 277
    .local v5, "phoneId":I
    if-eqz v1, :cond_1

    .line 278
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v4, v2, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v3, v2, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 282
    nop

    .line 308
    .end local v1    # "ecmState":Z
    .end local v5    # "phoneId":I
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x7b224c95 -> :sswitch_5
        -0x72d34001 -> :sswitch_4
        -0x633bdce1 -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        -0x4b6414be -> :sswitch_1
        0x18b4d13c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
