.class final enum Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
.super Ljava/lang/Enum;
.source "SettingsProviderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/SettingsProviderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DB_CREAT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

.field public static final enum DB_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

.field public static final enum DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

.field public static final enum DB_NEVER_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    const-string v1, "DB_NEVER_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_NEVER_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    const-string v1, "DB_CREATING_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    const-string v1, "DB_CREATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    .line 11
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    sget-object v5, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_NEVER_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->$VALUES:[Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->$VALUES:[Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    return-object v0
.end method
