.class public final enum Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;
.super Ljava/lang/Enum;
.source "ErrorRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetryAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

.field public static final enum RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

.field public static final enum RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

.field public static final enum RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    const-string v1, "RETRY_ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    .line 8
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    const-string v1, "RETRY_FORBIDDEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    const-string v1, "RETRY_USE_HEADER_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    .line 6
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->$VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;
    .locals 1

    .line 6
    sget-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->$VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    return-object v0
.end method
