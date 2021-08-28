.class Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Authorize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get OTP & save it to shared info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->registerUneregisterForOTP(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "otp":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 219
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->registerUneregisterForOTP(Z)V

    .line 220
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    return-object v2

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->registerUneregisterForOTP(Z)V

    .line 223
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 225
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    return-object v2
.end method
