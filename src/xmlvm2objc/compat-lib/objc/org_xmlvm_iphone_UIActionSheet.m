#import "org_xmlvm_iphone_UIActionSheet.h"
#import "org_xmlvm_iphone_UIActionSheetDelegate.h"


@implementation UIActionSheet (cat_org_xmlvm_iphone_UIActionSheet);


+ (org_xmlvm_iphone_UIActionSheet*) init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE :(java_lang_String*)title :(org_xmlvm_iphone_UIActionSheetDelegate*)delg :(java_lang_String*)cancelButtonTitle :(java_lang_String*)destructiveButtonTitle :(XMLVMArray*)o;
{
#define A(x) (o->array.o[(x)])
	XMLVM_PROPERTY_WITHCOMMAND(deldel, delg,)
	UIActionSheet * result;
	
	title = XMLVM_VALUE(title);
	delg = XMLVM_VALUE(delg);
	cancelButtonTitle = XMLVM_VALUE(cancelButtonTitle);
	destructiveButtonTitle = XMLVM_VALUE(destructiveButtonTitle);
	
	int howmany = 0;
	if (o!=nil && o!=JAVA_NULL)
		howmany = o->length;
	
	for (int i = 0; i <howmany; i++) {
		if (A(i)==JAVA_NULL) {
			for (int j = i+1; j<howmany; j++) {
				A(j-1) = A(j);
			}
			howmany--;
			i--;	// Need this in case a second null is coming!
		}
	}
	
	switch (howmany) {
		case 0:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];
			break;
		case 1:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0), nil];
			break;
		case 2:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),nil];
			break;
		case 3:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),nil];
			break;
		case 4:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),nil];
			break;
		case 5:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),nil];
			break;
		case 6:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),nil];
			break;
		case 7:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),nil];
			break;
		case 8:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),nil];
			break;
		case 9:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),nil];
			break;
		case 10:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),nil];
			break;
		case 11:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),nil];
			break;
		case 12:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),nil];
			break;
		case 13:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),nil];
			break;
		case 14:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),nil];
			break;
		case 15:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),nil];
			break;
		case 16:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),nil];
			break;
		case 17:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),nil];
			break;
		case 18:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),nil];
			break;
		case 19:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),nil];
			break;
		default:
			result = [[UIActionSheet alloc] initWithTitle:title delegate:delg cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),nil];
			break;
	}
	return result;
#undef A
}


- (void) showFromTabBar___org_xmlvm_iphone_UITabBar :(org_xmlvm_iphone_UITabBar*)n1
{
	[self showFromTabBar:n1];
}


- (void) showFromToolbar___org_xmlvm_iphone_UIToolbar :(org_xmlvm_iphone_UIToolbar*)n1
{
	[self showFromToolbar:n1];
}


- (void) showInView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
	[self showInView:n1];
}


//- (void) showFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2
//{
//}
//- (void) showFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_boolean :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2 :(int)n3
//{
//}

- (void) dismissWithClickedButtonIndex___int_boolean :(int)n1 :(int)n2
{
	[self dismissWithClickedButtonIndex:n1 animated:n2];
}



@end

