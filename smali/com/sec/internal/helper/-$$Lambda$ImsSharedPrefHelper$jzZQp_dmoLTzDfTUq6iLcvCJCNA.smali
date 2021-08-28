.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;

    invoke-direct {v0}, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;->INSTANCE:Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$jzZQp_dmoLTzDfTUq6iLcvCJCNA;

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

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$clear$11(Landroid/content/SharedPreferences;)V

    return-void
.end method
