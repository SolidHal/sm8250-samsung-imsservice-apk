.class public Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsServiceControlReceiver.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;

.field private static mServiceActivated:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->PROJECTION:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->WHERE_CLAUSE:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->mServiceActivated:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 91
    .local v6, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    .line 92
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->WHERE_CLAUSE:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 95
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 99
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsServiceControlReceiver.onReceive() intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gsma.services.rcs.action.GET_ACTIVATION_MODE_CHANGEABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ModeChangeable"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "results":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 42
    .local v1, "value":Z
    const-string v2, "get_activation_mode_changeable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 44
    .end local v0    # "results":Landroid/os/Bundle;
    .end local v1    # "value":Z
    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.gsma.services.rcs.action.GET_ACTIVATION_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "ServiceActivated"

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .restart local v0    # "results":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 47
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateTapiSettings()V

    .line 52
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->mServiceActivated:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mServiceActivated is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->mServiceActivated:Ljava/lang/String;

    .line 56
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->mServiceActivated:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 57
    .restart local v1    # "value":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_GET_ACTIVATION_MODE result value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "get_activation_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 60
    .end local v0    # "results":Landroid/os/Bundle;
    .end local v1    # "value":Z
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.gsma.services.rcs.action.SET_ACTIVATION_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "value":Z
    if-eqz v0, :cond_8

    .line 63
    const-string/jumbo v1, "set_activation_mode"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "active":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 65
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "whereArgs":[Ljava/lang/String;
    sget-object v6, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v4, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v0    # "value":Z
    .end local v1    # "active":Z
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gsma.services.rcs.action.GET_SERVICE_STARTING_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "results":Landroid/os/Bundle;
    if-nez v0, :cond_7

    .line 73
    return-void

    .line 75
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v1

    .line 76
    .local v1, "value":Z
    const-string v2, "get_service_starting_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_GET_SERVICE_STARTING_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/RcsServiceControlReceiver;->setResultExtras(Landroid/os/Bundle;)V

    goto :goto_1

    .line 70
    .end local v0    # "results":Landroid/os/Bundle;
    .end local v1    # "value":Z
    :cond_8
    :goto_0
    nop

    .line 80
    :goto_1
    return-void
.end method
