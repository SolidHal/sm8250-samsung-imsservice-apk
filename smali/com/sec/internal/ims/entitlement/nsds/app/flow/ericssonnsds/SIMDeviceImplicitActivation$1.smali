.class Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;
.super Ljava/lang/Object;
.source "SIMDeviceImplicitActivation.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "sent_token_to_server"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 67
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, "isTokenSent":Z
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREF_SENT_TOKEN_TO_SERVER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->access$100(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V

    .line 72
    .end local v0    # "isTokenSent":Z
    :cond_0
    return-void
.end method
