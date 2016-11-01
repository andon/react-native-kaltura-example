#import "RCTKalturaManager.h"
#import <KALTURAPlayerSDK/KPPlayerConfig.h>

@implementation RCTKalturaManager


- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

- (KPViewController *)player {
  if (!_player) {
    // Account Params
    KPPlayerConfig *config = [[KPPlayerConfig alloc] initWithDomain:@"http://cdnapi.kaltura.com"
                                                           uiConfID:@"26698911"
                                                          partnerId:@"1831271"];
    
    
    // Video Entry
    config.entryId = @"1_o426d3i4";
    
    // Setting this property will cache the html pages in the limit size
    config.cacheSize = 0.8;
    _player = [[KPViewController alloc] initWithConfiguration:config];
  }
  return _player;
}



RCT_EXPORT_MODULE()

- (UIView *)view
{
//  The following is the original code from Kaltura documentation
//  [super viewDidAppear:animated];
//  self.player.view.frame = (CGRect){0, 0, 320, 180};
//  [self.player loadPlayerIntoViewController:self];
//  [self.view addSubview:_player.view];

  self.player.view.frame = (CGRect){0, 0, 320, 180};
  return self.player.view;
}

@end
