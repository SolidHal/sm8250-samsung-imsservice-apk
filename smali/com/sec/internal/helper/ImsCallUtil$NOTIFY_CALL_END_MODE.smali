.class public Lcom/sec/internal/helper/ImsCallUtil$NOTIFY_CALL_END_MODE;
.super Ljava/lang/Object;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/ImsCallUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NOTIFY_CALL_END_MODE"
.end annotation


# static fields
.field public static final ENDCALL:I = 0x1

.field public static final LOCAL_RELEASE_CALL:I = 0x3

.field public static final REJECTCALL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
