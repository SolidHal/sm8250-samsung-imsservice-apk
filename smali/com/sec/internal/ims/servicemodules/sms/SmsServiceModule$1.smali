.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, "phoneId":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :goto_0
    move v2, v7

    :goto_1
    const-string v9, "mBroadcastReceiver.onReceive: "

    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_8

    const/4 v6, 0x7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 175
    :cond_1
    const/4 v1, 0x0

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "ine911":Z
    const-string/jumbo v3, "subscription"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, "subId":I
    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "newCallState":Ljava/lang/String;
    if-eq v3, v7, :cond_2

    .line 181
    goto/16 :goto_3

    .line 184
    :cond_2
    if-nez v4, :cond_3

    .line 185
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "telecom"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 188
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v5, :cond_4

    .line 189
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v2

    .line 191
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newCallState: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ine911: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object v7

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 193
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 194
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object v7

    aput-boolean v8, v7, v1

    .line 195
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$500(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/Integer;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v7, v6, v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 196
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    .line 199
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object v6

    aput-object v4, v6, v1

    goto/16 :goto_3

    .line 162
    .end local v2    # "ine911":Z
    .end local v3    # "subId":I
    .end local v4    # "newCallState":Ljava/lang/String;
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_6
    const-string/jumbo v2, "phone"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$300(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v2

    if-ge v1, v2, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, v8

    :goto_2
    move v1, v2

    .line 164
    const-string v2, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 165
    .local v2, "ecmState":Z
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ecmState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_a

    .line 167
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object v3

    aput-boolean v8, v3, v1

    .line 168
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$500(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/Integer;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    goto :goto_3

    .line 156
    .end local v2    # "ecmState":Z
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$002(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)Z

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v2

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    goto :goto_3

    .line 151
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2, v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$002(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)Z

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v2

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    nop

    .line 202
    :cond_a
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72d34001 -> :sswitch_4
        -0x633bdce1 -> :sswitch_3
        -0x4f0a83a5 -> :sswitch_2
        0x4b3e2663 -> :sswitch_1
        0x79808857 -> :sswitch_0
    .end sparse-switch
.end method
