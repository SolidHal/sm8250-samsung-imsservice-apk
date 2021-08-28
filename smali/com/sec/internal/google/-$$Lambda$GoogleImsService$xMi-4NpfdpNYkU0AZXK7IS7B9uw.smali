.class public final synthetic Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;

    invoke-direct {v0}, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;-><init>()V

    sput-object v0, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$3(I)[Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
