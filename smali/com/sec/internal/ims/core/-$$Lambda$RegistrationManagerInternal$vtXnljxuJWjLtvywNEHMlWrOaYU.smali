.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerInternal$vtXnljxuJWjLtvywNEHMlWrOaYU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$buildTask$0(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I

    move-result p1

    return p1
.end method
