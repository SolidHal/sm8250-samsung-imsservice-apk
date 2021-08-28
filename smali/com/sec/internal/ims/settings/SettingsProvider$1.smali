.class Lcom/sec/internal/ims/settings/SettingsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/settings/SettingsProvider;

    .line 271
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 274
    const-string v0, "mdc.sys.enable_smff"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    .local v0, "enableSMF":Z
    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "action":Ljava/lang/String;
    const-string v3, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "carrierState":Ljava/lang/String;
    const-string v4, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 281
    .local v4, "phoneId":I
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v1

    .line 282
    .local v1, "currentCarrierId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent : action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " phoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , extra : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImsSettingsProvider"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v5, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->access$000(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v5

    .line 287
    .local v5, "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    const-string v7, "UPDATED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 288
    iget-object v6, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v6, v5, v4, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->access$100(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    goto :goto_0

    .line 289
    :cond_1
    const-string v7, "LOADED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 291
    iget-object v7, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/settings/SettingsProvider;->access$200(Lcom/sec/internal/ims/settings/SettingsProvider;I)I

    move-result v7

    .line 292
    .local v7, "savedCarrierId":I
    iget-object v8, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v8, v4}, Lcom/sec/internal/ims/settings/SettingsProvider;->access$300(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "savedSwVer":Ljava/lang/String;
    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 294
    .local v9, "curSwVer":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saved CarrierId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Current Carrier Id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " / saved Sw Ver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " current Sw Ver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-ne v7, v1, :cond_2

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 299
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v6, v5, v4, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->access$100(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    .line 303
    .end local v5    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .end local v7    # "savedCarrierId":I
    .end local v8    # "savedSwVer":Ljava/lang/String;
    .end local v9    # "curSwVer":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method
