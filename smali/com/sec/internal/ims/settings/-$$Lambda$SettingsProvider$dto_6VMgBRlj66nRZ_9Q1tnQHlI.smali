.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->lambda$resetStoredConfig$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method
