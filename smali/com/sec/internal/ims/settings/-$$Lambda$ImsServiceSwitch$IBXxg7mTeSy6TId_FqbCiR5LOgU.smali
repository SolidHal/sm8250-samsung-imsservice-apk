.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->lambda$dumpServiceSwitch$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
