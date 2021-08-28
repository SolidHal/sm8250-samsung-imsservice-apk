.class public Lcom/sec/internal/ims/config/UserMessageIntentService;
.super Landroid/app/IntentService;
.source "UserMessageIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SHOW_MSISDN_DIALOG:Ljava/lang/String; = "com.sec.rcs.config.action.SHOW_MSISDN_DIALOG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/config/UserMessageIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/UserMessageIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/config/UserMessageIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 32
    if-eqz p1, :cond_4

    .line 33
    sget-object v0, Lcom/sec/internal/ims/config/UserMessageIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3d466613

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "com.sec.rcs.config.action.SHOW_MSISDN_DIALOG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 37
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->showMSIDSNDialog()V

    .line 40
    .end local v0    # "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    :cond_3
    :goto_1
    goto :goto_2

    .line 43
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/config/UserMessageIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHandleIntent: intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_2
    return-void
.end method
