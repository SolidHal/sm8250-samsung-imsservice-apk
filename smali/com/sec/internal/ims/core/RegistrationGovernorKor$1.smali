.class Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorKor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorKor;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 202
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$000(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 206
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "com.sec.internal.ims.imsservice.dm_polling_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$900(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 235
    goto :goto_2

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$800(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 232
    goto :goto_2

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$700(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 229
    goto :goto_2

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$600(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V

    .line 226
    goto :goto_2

    .line 221
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$500(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 222
    goto :goto_2

    .line 218
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$400(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 219
    goto :goto_2

    .line 215
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$300(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V

    .line 216
    goto :goto_2

    .line 212
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$200(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V

    .line 213
    goto :goto_2

    .line 209
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->access$100(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 210
    nop

    .line 240
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ca01bd5 -> :sswitch_9
        -0x52a33395 -> :sswitch_8
        -0x427a9bd1 -> :sswitch_7
        -0x402b4235 -> :sswitch_6
        -0x3f7f7392 -> :sswitch_5
        -0x362f2365 -> :sswitch_4
        -0x25b66b1a -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x53922511 -> :sswitch_1
        0x714f24ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
