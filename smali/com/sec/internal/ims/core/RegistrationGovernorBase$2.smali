.class Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;
.super Ljava/lang/Object;
.source "RegistrationGovernorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPackageDataCleared(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 182
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    .line 181
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 182
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 181
    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 183
    return-void
.end method
