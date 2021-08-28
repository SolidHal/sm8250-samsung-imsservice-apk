.class public Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# static fields
.field private static final ENTITLEMENT_CONFIG_DATABASE_NAME:Ljava/lang/String; = "entitlement_config.db"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSDS_DATABASE_NAME:Ljava/lang/String; = "ericsson_nsds.db"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMigrateDB(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "entitlement.config"

    const-string v1, "000"

    const-string v2, "migrate_to_ce"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "migrateToCe":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "migrated"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    const-string v4, "migrating"

    invoke-static {p0, v0, v1, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static migrateDBToCe(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Migrate entitlement DB/SP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "ericsson_nsds.db"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    const-string v0, "entitlement_config.db"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->migrationToCe(Landroid/content/Context;)Z

    .line 27
    const-string v0, "entitlement.config"

    const-string v1, "000"

    const-string v2, "migrate_to_ce"

    const-string v3, "migrated"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->reconnectDB(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static reconnectDB(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "ceContext":Landroid/content/Context;
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "reconnect_db"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, "nsds_uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, "config_uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    return-void
.end method
